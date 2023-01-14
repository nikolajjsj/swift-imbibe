//
//  IngredientCard.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct IngredientCard: View {
    let ingredient: Ingredient
    
    var body: some View {
        let background = Color(hex: ingredient.color) ?? .clear
        let foreground = background.contastColor
        
        NavigationLink(value: Route.ingredient(ingredient)) {
            HStack {
                if let image = UIImage.init(named: ingredient.name) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 60)
                }
                
                VStack(alignment: .leading) {
                    Text(ingredient.name).font(.headline.bold()).lineLimit(1)
                    Text("\(ingredient.strength)%").opacity(0.75)
                }
                Spacer()
            }
        }
        .foregroundColor(foreground)
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(RoundedRectangle(cornerRadius: 10).fill(background.gradient))
    }
}

struct IngredientCard_Previews: PreviewProvider {
    static var previews: some View {
        IngredientCard(ingredient: Ingredients.ryeWhisky)
    }
}
