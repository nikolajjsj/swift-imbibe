//
//  IngredientCard.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct IngredientCard: View {
    let ingredient: Ingredient
    
    @State private var presented = false
    
    var body: some View {
        let background = ingredient.color
        
        HStack {
            if let image = UIImage.init(named: ingredient.image) {
                Image(uiImage: image)
                    .interpolation(.none)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 80)
            }
            
            VStack(alignment: .leading) {
                Text(ingredient.name)
                    .font(.headline)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
                Text("\(ingredient.strength)%")
                    .lineLimit(1)
                    .opacity(0.9)
            }
            .foregroundColor(background.contrastColor)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(background)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .onTapGesture { presented.toggle() }
        .sheet(isPresented: $presented) { IngredientView(ingredient: ingredient) }
    }
}

struct IngredientCard_Previews: PreviewProvider {
    static var previews: some View {
        IngredientCard(ingredient: Ingredients.instance.ryeWhisky)
    }
}
