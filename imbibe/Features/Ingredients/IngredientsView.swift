//
//  IngredientsView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct IngredientsView: View {
    @State private var query = ""
    @State private var sortedIngredients: [Ingredient] = ingredients.values.sorted(by: { $0.name < $1.name })
    
    var body: some View {
        List {
            Section {
                ForEach(filtered) { ingredient in
                    IngredientCard(ingredient: ingredient)
                        .listRowSeparator(.hidden)
                }
            }
        }
        .searchable(text: $query)
        .listStyle(.plain)
        .navigationTitle("Imbibe")
    }
    
    var filtered: [Ingredient] {
        query.isEmpty
        ? sortedIngredients
        : sortedIngredients.filter({ $0.name.lowercased().contains(query.lowercased()) })
    }
}

struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IngredientsView()
        }
    }
}
