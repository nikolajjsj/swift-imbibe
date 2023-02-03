//
//  IngredientDrinksList.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 15/01/2023.
//

import SwiftUI

struct IngredientDrinksList: View {
    let ingredient: Ingredient
    
    init(_ ingredient: Ingredient) {
        self.ingredient = ingredient
    }
    
    var body: some View {
        let drinks = drinksWithIngredient
        
        
        if drinks.isEmpty {
            EmptyView()
        } else {
            VStack {
                Text("Drinks with \(ingredient.name) (\(drinks.count))").font(.headline)
                
                LazyVStack {
                    ForEach(drinks) { drink in
                        DrinkCard(drink: drink)
                    }
                }
            }.detailCard()
        }
    }
    
    var drinksWithIngredient: [Drink] {
        Drinks.instance.all.filter({ d in
            d.ingredients.contains(where: { i in i.ingredient.name == ingredient.name })
        })
    }
}

struct IngredientDrinksList_Previews: PreviewProvider {
    static var previews: some View {
        IngredientDrinksList(Ingredients.instance.kahlua)
    }
}
