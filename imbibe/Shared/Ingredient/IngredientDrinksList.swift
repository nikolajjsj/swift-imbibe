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
        VStack {
            Text("Drinks with \(ingredient.name)").font(.headline)
            
            LazyVStack {
                ForEach(drinksWithIngredient) { drink in
                    DrinkCard(drink: drink)
                }
            }
        }.detailCard()
    }
    
    var drinksWithIngredient: [Drink] {
        Drinks.all.filter({ d in
            d.ingredients.contains(where: { i in i.ingredient.name == ingredient.name })
        })
    }
}

struct IngredientDrinksList_Previews: PreviewProvider {
    static var previews: some View {
        IngredientDrinksList(Ingredients.kahlua)
    }
}
