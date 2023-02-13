//
//  NSManagedObject+Extensions.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 13/02/2023.
//

import Foundation
import CoreData

extension NSManagedObjectContext {
    /// Create a child context and set itself as the parent.
    func newChildContext(type: NSManagedObjectContextConcurrencyType = .mainQueueConcurrencyType, mergesChangesFromParent: Bool = true) -> NSManagedObjectContext {
        let context = NSManagedObjectContext(concurrencyType: type)
        context.parent = self
        context.automaticallyMergesChangesFromParent = mergesChangesFromParent
        return context
    }
    
    /// Quickly save the context by assuming that the throw will not happen.
    func quickSave() {
        guard hasChanges else { return }
        do {
            try save()
        } catch {
            print("failed to save context with error: \(error)")
        }
    }
}

extension SelectedIngredient {
    
}
