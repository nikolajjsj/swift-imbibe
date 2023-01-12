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
        List {
            Section {
                ForEach(filtered) { d in
                    DrinkCard(drink: d)
                        .listRowSeparator(.hidden)
                }
            }
        }
        .searchable(text: $query)
        .listStyle(.plain)
    }
    
    var filtered: [Drink] {
        query.isEmpty
        ? Drinks.all
        : Drinks.all.filter({ $0.name.lowercased().contains(query.lowercased()) })
    }
}


struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        DrinksView()
    }
}
