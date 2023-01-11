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
        
        NavigationLink {} label: {
            HStack {
                if let image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 72)
                        .frame(maxHeight: 100)
                }
                
                VStack(alignment: .leading) {
                    Text(ingredient.name).font(.title.bold())
                    if let description = ingredient.description, !ingredient.description.isEmpty {
                        Text(description)
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
