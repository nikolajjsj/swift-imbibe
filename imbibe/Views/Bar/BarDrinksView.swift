//
//  BarDrinksView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

struct BarDrinksView: View {
    @AppStorage(LocalStorageKeys.barIngredients.rawValue) var selected: [String] = []
    
    var body: some View {
        DrinksList(drinks: drinks)
            .navigationTitle("Available Drinks")
    }
    
    var drinks: [Drink] { Drinks.available(selections: selected) }
}

struct BarDrinksView_Previews: PreviewProvider {
    static var previews: some View {
        BarDrinksView()
    }
}
