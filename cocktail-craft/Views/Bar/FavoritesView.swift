//
//  FavoritesView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

struct FavoritesView: View {
    @FetchRequest(sortDescriptors: [], animation: .default) var favorites: FetchedResults<Favorite>
    
    var body: some View {
        DrinksList(drinks: drinks)
            .navigationTitle("Favorites")
    }
    
    var drinks: [Drink] {
        Drinks.instance.all.filter({ drink in
            favorites.contains(where: { drink.name == $0.name })
        })
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
