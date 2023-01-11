//
//  DiscoverView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        List {
            NavigationLink {
                if let random = drinks.randomElement() {
                    DrinkView(drink: random)
                }
            } label: {
                Text("Random Drink").font(.title.bold())
            }
            .listRowSeparator(.hidden)
            
            Section {
                ForEach(iconicDrinks) { drink in
                    DrinkCard(drink: drink)
                }
            } header: {
                 Text("Iconic Drinks")
            }
            .listRowSeparator(.hidden)
        }.listStyle(.plain)
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DiscoverView()
        }
    }
}
