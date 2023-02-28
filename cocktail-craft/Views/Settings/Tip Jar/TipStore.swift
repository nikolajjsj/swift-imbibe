//
//  TipStore.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 27/02/2023.
//

import Foundation
import StoreKit

fileprivate let tipJarIdentifiers = [
    "coffeetip",
    "lunchtip",
    "pizzatip",
]

enum TipsError: LocalizedError {
    case failedVerification
    case system(Error)
    
    var errorDescription: String? {
        switch self {
        case .failedVerification:
            return "User transaction verification failed"
        case .system(let err):
            return err.localizedDescription
        }
    }
}

enum TipsAction: Equatable {
    case succesful
    case failed(TipsError)
    
    static func == (lhs: TipsAction, rhs: TipsAction) -> Bool {
        switch (lhs, rhs) {
        case (.succesful, .succesful):
            return true
        case (.failed(let lhsErr), .failed(let rhsErr)):
            return lhsErr.localizedDescription == rhsErr.localizedDescription
        default:
            return false
        }
    }
}

typealias PurchaseResult = Product.PurchaseResult
typealias TransactionListener = Task<Void, Error>

@MainActor
final class TipStore: ObservableObject {
    @Published private(set) var products = [Product]()
    @Published private(set) var action: TipsAction? {
        didSet {
            switch action {
            case .failed:
                hasError = true
            default:
                hasError = false
            }
        }
    }
    
    @Published var hasError: Bool = false
    var error: TipsError? {
        switch action {
        case .failed(let err):
            return err
        default:
            return nil
        }
    }
    
    private var transactionListener: TransactionListener?
    
    init() {
        transactionListener = configureTransactionListener()
        Task { [weak self] in
            await self?.retrieveProducts()
        }
    }
    
    deinit {
        transactionListener?.cancel()
    }
    
    func purchase(_ item: Product) async {
        do {
            let result = try await item.purchase()
            try await handlePurchase(from: result)
        } catch {
            action = .failed(.system(error))
            print(error.localizedDescription)
        }
    }
    
    func reset() {
        action = nil
    }
}

private extension TipStore {
    func configureTransactionListener() -> TransactionListener {
        Task.detached(priority: .background) { @MainActor [weak self] in
            do {
                for await result in Transaction.updates {
                    let transaction = try self?.checkVerified(result)
                    self?.action = .succesful
                    await transaction?.finish()
                }
            } catch {
                self?.action = .failed(.system(error))
                print(error.localizedDescription)
            }
        }
    }
    
    func retrieveProducts() async {
        do {
            let items = try await Product.products(for: tipJarIdentifiers)
            products = items
        } catch {
            action = .failed(.system(error))
            print(error.localizedDescription)
        }
    }
    
    func handlePurchase(from result: PurchaseResult) async throws {
        switch result {
        case .success(let verification):
            print("Purchase was succesful")
            let transaction = try checkVerified(verification)
            action = .succesful
            await transaction.finish()
            
        case .pending:
            print("Purchase is pending")
            
        case .userCancelled:
            print("User cancelled purchase")
            
        default:
            break
        }
    }
    
    func checkVerified<T>(_ result: VerificationResult<T>) throws -> T {
        switch result {
        case .unverified:
            print("The verification of the user failed")
            throw TipsError.failedVerification
        case .verified(let safe):
            return safe
        }
    }
}
