//
//  Favorites-ViewModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import Foundation

final class FavoritesViewModel: ViewModel {
    @Published private(set) var favorites: [Drink] = []
    
    var global: Global?
    
    init() {
        self.loadFromLocalStorage()
    }
    
    func toggleDrink(_ drink: Drink) {
        if favorites.contains(drink) {
            favorites.removeAll(where: { $0.name == drink.name })
        } else {
            favorites.append(drink)
        }
        self.saveToLocalStorage()
    }
    
    private func saveToLocalStorage() {
        let toSave = favorites.map({ $0.name })
        LocalStorage.set(value: toSave, key: LocalStorageKeys.favorites)
    }
    
    private func loadFromLocalStorage() {
        let lsFavorites = LocalStorage.get(type: [String].self, forKey: LocalStorageKeys.favorites) ?? []
        favorites = Drinks.all.filter({ lsFavorites.contains($0.name) })
    }
}
