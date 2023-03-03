//
//  IngredientsList+ViewModel.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 03/03/2023.
//

import Foundation

@MainActor
final class IngredientsListViewModel: ObservableObject {
    @Published private(set) var ingredients: [Ingredient] = []
    
    @Published private(set) var tags: [Ingredient.Tag] = []
    
    @Published var query: String = ""
    @Published var showFilters: Bool = false
    
    init(ingredients: [Ingredient]) {
        self.ingredients = ingredients
    }
    
    var shownIngredients: [Ingredient] {
        var shown: [Ingredient]
        if tags.isEmpty {
            shown = ingredients
        } else {
            shown = ingredients.filter({ ingredient in
                tags.first(where: { ingredient.tags.contains($0) }) != nil
            })
        }
        return shown
    }
    
    var filtered: [Ingredient] {
        if query.isEmpty {
            return shownIngredients
        } else {
            return shownIngredients.filter({ $0.name.localizedCaseInsensitiveContains(query) })
        }
    }
    
    func updateTags(_ tag: Ingredient.Tag) {
        if tags.contains(tag) {
            tags = tags.filter({ $0 != tag })
        } else {
            tags.append(tag)
        }
    }
    
    func clearAll() {
        tags.removeAll()
    }
}

