//
//  ContentView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI
import CoreData

struct DrinksView: View {
    @State private var query: String = ""
    
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
        .searchable(text: $query, placement: .toolbar)
    }
    
    var filtered: [Drink] {
        query.isEmpty
        ? Drinks.all
        : Drinks.all.filter({ $0.name.localizedCaseInsensitiveContains(query) })
    }
}


struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinksView()
        }
    }
}
