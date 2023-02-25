//
//  DrinksList.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 25/02/2023.
//

import SwiftUI

struct DrinksListView: View {
    @ObservedObject var vm: DrinksListViewModel
    
    init(drinks: [Drink]) {
        self._vm = ObservedObject(wrappedValue: DrinksListViewModel(drinks: drinks))
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [ GridItem(.flexible()), GridItem(.flexible()) ]) {
                ForEach(vm.filtered) { d in
                    DrinkCard(drink: d)
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
        .sheet(isPresented: $vm.showFilters) { DrinkFilters(vm: vm) }
    }
    
    func toggleFilters() {
        withAnimation {
            vm.showFilters.toggle()
        }
    }
}

struct DrinksListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinksListView(drinks: Drinks.instance.all)
        }
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
