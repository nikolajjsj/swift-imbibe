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
        let columns = [ GridItem(.flexible()), GridItem(.flexible()) ]
        
        ScrollView {
            VStack(alignment: .leading) {
                Text("Iconic Drinks")
                    .font(.headline)
                    .foregroundColor(.gray)
                
                LazyVGrid(columns: columns) {
                    ForEach(Drinks.allIconic) { d in
                        DrinkCard(drink: d)
                    }
                }
            }
            .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DiscoverView()
        }
    }
}
