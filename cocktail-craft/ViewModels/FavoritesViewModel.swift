//
//  Favorites-ViewModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import Foundation

final class FavoritesViewModel: ObservableObject {
    private let viewContext = PersistenceController.shared.container.viewContext
    
    init() {
        self.loadFromLocalStorage()
    }
    
    private func loadFromLocalStorage() {
        // Convert local storage favorites into core data versions
        let lsFavorites = LocalStorage.get(type: [String].self, forKey: LocalStorageKeys.favorites) ?? []
        let favorites = Favorite.fetchRequest()
        do {
            let result = try viewContext.fetch(favorites)
            
            // Check if core data contains all favorites from local storage
            for favorite in lsFavorites {
                if !result.contains(where: { $0.name == favorite }) {
                    let item = Favorite(context: viewContext)
                    item.name = favorite
                }
            }
            viewContext.quickSave()
            
            LocalStorage.remove(key: LocalStorageKeys.favorites)
        } catch {
            print("Couldn't fetch items: \(error.localizedDescription)")
        }
        
        // Convert local storage bar ingredients into core data versions
        let lsSelections = LocalStorage.get(type: [String].self, forKey: LocalStorageKeys.barIngredients) ?? []
        let selections = SelectedIngredient.fetchRequest()
        do {
            let result = try viewContext.fetch(selections)
            
            // Check if core data contains all favorites from local storage
            for selection in lsSelections {
                if !result.contains(where: { $0.name == selection }) {
                    let item = SelectedIngredient(context: viewContext)
                    item.name = selection
                }
            }
            viewContext.quickSave()
            
            LocalStorage.remove(key: LocalStorageKeys.barIngredients)
        } catch {
            print("Couldn't fetch items: \(error.localizedDescription)")
        }
    }
}
