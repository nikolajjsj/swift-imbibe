//
//  MyBarView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

struct BarIngredientsView: View {
    @FetchRequest(sortDescriptors: [], animation: .default) var selected: FetchedResults<SelectedIngredient>
    
    @State private var query = ""
    @State private var all: [Ingredient] = Ingredients.instance.all
    
    var body: some View {
        let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        
        ScrollView {
            LazyVStack {
                if !query.isEmpty {
                    Text("\(filtered.count) results")
                        .foregroundColor(.gray)
                        .padding(.vertical)
                }
                
                LazyVGrid(columns: columns) {
                    ForEach(filtered) { ing in
                        SelectableIngredientCard(
                            ingredient: ing,
                            selectedIngredient: selected.first(where: { $0.name == ing.name })
                        )
                    }
                }
            }.padding(.horizontal)
        }
        .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always))
        .navigationBarTitle("Bar Ingredients")
    }
    
    var filtered: [Ingredient] {
        if query.isEmpty {
            return all
        } else {
            return all.filter({ $0.name.localizedCaseInsensitiveContains(query) })
        }
    }
}

struct BarIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BarIngredientsView()
        }
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
