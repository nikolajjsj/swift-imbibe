//
//  IngredientsView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct IngredientsView: View {
    @State private var query = ""
    
    var body: some View {
        let columns = [ GridItem(.flexible()), GridItem(.flexible()) ]
        
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(filtered) { ingredient in
                    IngredientCard(ingredient: ingredient)
                }
            }
            .padding(.horizontal)
        }
        .searchable(text: $query)
        .navigationTitle("Ingredients")
    }
    
    var filtered: [Ingredient] {
        query.isEmpty
        ? Ingredients.all
        : Ingredients.all.filter({ $0.name.lowercased().contains(query.lowercased()) })
    }
}

struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IngredientsView()
        }
    }
}
