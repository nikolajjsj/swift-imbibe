//
//  IngredientView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct IngredientView: View {
    let ingredient: Ingredient
    
    var body: some View {
        ScrollView {
            VStack {
                if let image = UIImage.init(named: ingredient.image) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: min(
                            image.size.height,
                            UIScreen.main.bounds.size.height / 3
                        ))
                        .padding(.vertical)
                }
                
                IngredientDetails(ingredient)
                
                IngredientDrinksList(ingredient)
            }
        }
        .padding(.horizontal)
        .background(ingredient.color.gradient)
        .presentationDetents([.medium, .large])
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IngredientView(ingredient: Ingredients.bourbonWhisky)
        }
    }
}
