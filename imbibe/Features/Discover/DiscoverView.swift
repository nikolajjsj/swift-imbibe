//
//  DiscoverView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct DiscoverView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        List {
            Section {
                ForEach(Drinks.allIconic) { drink in
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
