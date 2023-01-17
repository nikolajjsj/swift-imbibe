//
//  ContentView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI
import CoreData

struct DrinksView: View {
    @State private var drinks: [Drink] = Drinks.all
    
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
        .sheet(isPresented: $showFilters) { DrinkFilters { items in drinks = items } }
    }
    
    var filtered: [Drink] {
        if query.isEmpty {
            return drinks
        } else {
            return drinks.filter({ $0.name.localizedCaseInsensitiveContains(query) })
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
