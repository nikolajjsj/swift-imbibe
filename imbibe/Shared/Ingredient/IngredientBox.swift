//
//  IngredientBox.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 14/01/2023.
//

import SwiftUI

struct IngredientBox: View {
    let ingredient: Ingredient
    
    init(_ ingredient: Ingredient) {
        self.ingredient = ingredient
    }
    
    @State private var presented = false
    
    var body: some View {
        let bg = Color(hex: ingredient.color)
        let fg = bg?.contastColor
        
        Text(ingredient.name)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(RoundedRectangle(cornerRadius: 4).fill(bg ?? .white))
            .background(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1))
            .foregroundColor(fg)
            .onTapGesture { presented.toggle() }
            .sheet(isPresented: $presented) { IngredientView(ingredient: ingredient) }
    }
}

struct IngredientBox_Previews: PreviewProvider {
    static var previews: some View {
        IngredientBox(Ingredients.absinthe)
    }
}
