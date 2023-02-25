//
//  SelectableIngredientCard.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 25/02/2023.
//

import SwiftUI

struct SelectableIngredientCard: View {
    @Environment(\.managedObjectContext) private var moc
    
    var ingredient: Ingredient
    var selectedIngredient: SelectedIngredient? = nil
    
    var body: some View {
        VStack {
            Spacer()
            Image(ingredient.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 100)
            Text(ingredient.name)
                .bold()
                .lineLimit(2)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .padding(6)
        .frame(maxWidth: .infinity)
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(selectedIngredient != nil ? ingredient.color : .clear))
        .foregroundColor(selectedIngredient != nil ? ingredient.color.contrastColor : nil)
        .onTapGesture {
            if let selectedIngredient {
                moc.delete(selectedIngredient)
                moc.quickSave()
            } else {
                let selection = SelectedIngredient(context: moc)
                selection.name = ingredient.name
                moc.quickSave()
            }
        }
    }
}

struct SelectableIngredientCard_Previews: PreviewProvider {
    static var previews: some View {
        SelectableIngredientCard(
            ingredient: Ingredients.instance.lime,
            selectedIngredient: nil
        )
    }
}
