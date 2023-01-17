//
//  DrinksList.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 17/01/2023.
//

import SwiftUI

struct DrinksList: View {
    let label: String
    let drinks: [Drink]
    
    @State private var query = ""
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [ GridItem(.flexible()), GridItem(.flexible()) ]) {
                ForEach(filtered) { d in
                    DrinkCard(drink: d)
                }
            }
            .padding(.horizontal)
            .navigationTitle(label)
        }
        .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always))
    }
    
    var filtered: [Drink] {
        if query.isEmpty {
            return drinks
        } else {
            return drinks.filter({ $0.name.localizedCaseInsensitiveContains(query) })
        }
    }
}

struct DrinksList_Previews: PreviewProvider {
    static var previews: some View {
        DrinksList(label: "Title", drinks: [])
    }
}
