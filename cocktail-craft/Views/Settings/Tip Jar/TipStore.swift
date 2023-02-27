//
//  TipStore.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 27/02/2023.
//

import Foundation
import StoreKit

enum TipsError: Error {
    case failedVerification
}

enum TipsAction {
    case succesful
}

typealias PurchaseResult = Product.PurchaseResult

let tipJarIdentifiers = [
    "coffeetip",
    "lunchtip",
    "pizzatip",
]

final class TipStore: ObservableObject {
    @Published private(set) var products = [Product]()
    @Published private(set) var action: TipsAction?
    
    init() {
        Task { [weak self] in
            await self?.retrieveProducts()
        }
    }
    
    func purchase(_ item: Product) async {
        do {
            let result = try await item.purchase()
            try await handlePurchase(from: result)
        } catch {
            print(error.localizedDescription)
        }
    }
}

private extension TipStore {
    @MainActor
    func retrieveProducts() async {
        do {
            let items = try await Product.products(for: tipJarIdentifiers)
            products = items
        } catch {
            print(error.localizedDescription)
        }
    }
    
    @MainActor
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
