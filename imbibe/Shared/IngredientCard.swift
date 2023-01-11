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
        let image = UIImage.init(named: ingredient.name)
        let bgColor = Color(uiColor: image?.averageColor ?? .clear)
        let fgColor = bgColor.contastColor
        
        NavigationLink(value: Route.ingredient(ingredient)) {
            HStack {
                if let image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 62)
                        .frame(maxHeight: 80)
                }
                
                VStack(alignment: .leading) {
                    Text(ingredient.name).font(.title2.bold()).lineLimit(1)
                    if let description = ingredient.description, !ingredient.description.isEmpty {
                        Text(description).lineLimit(1)
                    }
                }
                Spacer()
            }
        }
        .foregroundColor(fgColor)
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(RoundedRectangle(cornerRadius: 10).fill(bgColor))
    }
}

struct IngredientCard_Previews: PreviewProvider {
    static var previews: some View {
        IngredientCard(ingredient: ingredients["Rye Whisky"]!)
    }
}
