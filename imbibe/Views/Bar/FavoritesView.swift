//
//  FavoritesView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var fvm: FavoritesViewModel
    
    var body: some View {
        DrinksList(drinks: fvm.favorites)
            .navigationTitle("Favorites")
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
        .environmentObject(FavoritesViewModel())
    }
}
