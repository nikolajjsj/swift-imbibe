//
//  IngredientDetails.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 15/01/2023.
//

import SwiftUI

struct IngredientDetails: View {
    let ingredient: Ingredient
    
    init(_ ingredient: Ingredient) {
        self.ingredient = ingredient
    }
    
    var body: some View {
        VStack {
            Text(ingredient.name).font(.headline).padding(.bottom)
            
            Grid(alignment: .leading) {
                GridRow {
                    Text("Strength")
                    Text("\(ingredient.strength)%").bold()
                }
                Divider()
                
                if let origin = ingredient.origin {
                    GridRow {
                        Text("Origin")
                        Text(origin.name + origin.flag).bold()
                    }
                    Divider()
                }
                
                if !ingredient.description.isEmpty {
                    GridRow {
                        Text("Description")
                        Text(ingredient.description)
                    }
                    Divider()
                }
            }
        }.detailCard()
    }
}

struct IngredientDetails_Previews: PreviewProvider {
    static var previews: some View {
        IngredientDetails(Ingredients.kahlua)
    }
}
