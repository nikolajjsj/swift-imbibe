//
//  IngredientsInspector.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 14/01/2023.
//

import SwiftUI

struct IngredientsInspector: View {
    let drink: Drink
    
    @State private var servings = 1
    @State private var unit: UnitVolume = .milliliters
    
    init(_ drink: Drink) {
        self.drink = drink
    }
    
    var body: some View {
        VStack {
            Text("Ingredients (\(drink.ingredients.count))").font(.headline)
            
            VStack {
                HStack {
                    Text("Servings").frame(minWidth: 80)
                    Picker("", selection: $servings) {
                        ForEach(1 ..< 5, id: \.self) { serving in
                            Text("\(serving)").tag(serving)
                        }
                    }.pickerStyle(.segmented)
                }
                
                HStack {
                    Text("Unit").frame(minWidth: 80)
                    Picker("", selection: $unit) {
                        Text(UnitVolume.milliliters.symbol).tag(UnitVolume.milliliters)
                        Text(UnitVolume.centiliters.symbol).tag(UnitVolume.centiliters)
                        Text(UnitVolume.fluidOunces.symbol).tag(UnitVolume.fluidOunces)
                        Text(UnitVolume.teaspoons.symbol).tag(UnitVolume.teaspoons)
                    }.pickerStyle(.segmented)
                }
            }.padding(.vertical, 6)
            
            LazyVGrid(columns: [GridItem(.flexible())]) {
                ForEach(drink.ingredients) { i in
                    IngredientDetailPill(i, servings: servings, unit: unit)
                }
            }
        }.detailCard()
    }
    
    @ViewBuilder
    func IngredientDetailPill(_ ingredient: IngredientWithVolume, servings: Int, unit: UnitVolume) -> some View {
        let bg = ingredient.ingredient.color
        let fg = bg.contrastColor
        
        HStack {
            if ingredient.unit?.symbol == "dash" || ingredient.unit?.symbol == "drop" || ingredient.unit?.symbol == "piece" {
                if let singleAmount = ingredient.amount {
                    let amount = singleAmount * Double(servings)
                    
                    Text(amount.formatted(.number))
                    if let symbol = ingredient.unit?.symbol {
                        Text(symbol + (amount > 1 ? "s" : ""))
                    }
                }
            } else {
                if let singleAmount = ingredient.toUnit(unit) {
                    let amount = singleAmount * Double(servings)
                    
                    Text(amount.rounded(toPlaces: 1).formatted(.number))
                    Text(unit.symbol)
                }
            }
            Spacer()
            Text(ingredient.ingredient.name)
        }
        .lineLimit(1)
        .padding()
        .background(Capsule().fill(bg))
        .foregroundColor(fg)
    }
}

struct IngredientsInspector_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsInspector(Drinks.mojito)
    }
}
