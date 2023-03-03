//
//  IngredientsListView.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 03/03/2023.
//

import SwiftUI

struct IngredientsListView: View {
    @ObservedObject var vm: IngredientsListViewModel
    
    init(ingredients: [Ingredient]) {
        self._vm = ObservedObject(wrappedValue: IngredientsListViewModel(ingredients: ingredients))
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [ GridItem(.flexible()), GridItem(.flexible()) ]) {
                ForEach(vm.filtered) { ingredient in
                    IngredientCard(ingredient: ingredient)
                }
            }
            .padding(.horizontal)
        }
        .searchable(text: $vm.query, placement: .navigationBarDrawer(displayMode: .always))
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: toggleFilters, label: { Text("Filters") })
            }
        }
        .sheet(isPresented: $vm.showFilters) { IngredientsFilters(vm: vm) }
    }
    
    func toggleFilters() {
        withAnimation {
            vm.showFilters.toggle()
        }
    }
}

struct IngredientsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IngredientsListView(ingredients: Ingredients.instance.all)
        }
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
