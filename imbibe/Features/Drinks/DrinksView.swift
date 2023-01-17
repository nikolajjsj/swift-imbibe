//
//  ContentView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI
import CoreData

struct DrinksView: View {
    @ObservedObject var vm = DrinksViewModel()
    
    @State private var query: String = ""
    @State private var showFilters: Bool = false
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [ GridItem(.flexible()), GridItem(.flexible()) ]) {
                ForEach(filtered) { d in
                    DrinkCard(drink: d)
                }
            }
            .padding(.horizontal)
            .navigationTitle("Drinks")
        }
        .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always))
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    withAnimation { showFilters.toggle() }
                } label: {
                    Text("Filters")
                }
            }
        }
        .sheet(isPresented: $showFilters) { DrinkFilters(vm: vm) }
    }
    
    var filtered: [Drink] {
        if query.isEmpty {
            return vm.drinks
        } else {
            return vm.drinks.filter({ $0.name.localizedCaseInsensitiveContains(query) })
        }
    }
}

struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinksView()
        }
    }
}
