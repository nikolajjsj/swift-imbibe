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
            Text(ingredient.name)
                .font(.headline)
                .padding(.bottom)
            
            Grid(alignment: .leading, horizontalSpacing: 24) {
                GridRow {
                    Text("Strength").font(.headline)
                    HStack {
                        Text("\(ingredient.strength)%")
                        Spacer()
                    }
                }
                
                if let origin = ingredient.origin {
                    Divider()
                    GridRow {
                        Text("Origin").font(.headline)
                        Text(origin.name + origin.flag)
                    }
                }
                
                if !ingredient.description.isEmpty {
                    Divider()
                    GridRow {
                        Text("Description").font(.headline)
                        Text(ingredient.description)
                    }
                }
                
                if !ingredient.alternatives.isEmpty {
                    Divider()
                    GridRow {
                        Text("Alternatives").font(.headline)
                        WrappingHStack(models: ingredient.alternatives, viewGenerator: {i in
                            IngredientBox(i)
                        }, horizontalSpacing: 4, verticalSpacing: 4)
                    }
                }
            }
        }
        .detailCard()
    }
}

struct IngredientDetails_Previews: PreviewProvider {
    static var previews: some View {
        IngredientDetails(Ingredients.instance.aperol)
    }
}
