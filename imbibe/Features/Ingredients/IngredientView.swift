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
        List {
            IngredientImage().listRowSeparator(.hidden)
            
            Section {
                Text("Strength: \(ingredient.strength)%")
                if !ingredient.description.isEmpty {
                    Text(ingredient.description)
                }
            } header: {
                Text("Details")
            }
            
            Section {
                ForEach(drinksWithIngredient) { drink in
                    DrinkCard(drink: drink)
                }
            } header: {
                Text("Drinks with \(ingredient.name)")
            }
        }
        .listStyle(.plain)
        .navigationTitle(ingredient.name)
    }
    
    var drinksWithIngredient: [Drink] {
        drinks.filter({ d in d.ingredients.contains(where: { i in i.ingredient.name == ingredient.name }) })
    }
    
    @ViewBuilder
    func IngredientImage() -> some View {
        let image = UIImage.init(named: ingredient.name)
        let bgColor = image?.averageColor ?? .clear
        
        if let image {
            HStack {
                Spacer()
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 300)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                Spacer()
            }
            .background(RoundedRectangle(cornerRadius: 10).fill(Color(bgColor)))
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IngredientView(ingredient: ingredients["Egg White"]!)
        }
    }
}
