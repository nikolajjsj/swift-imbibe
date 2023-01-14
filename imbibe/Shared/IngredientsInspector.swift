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
        GroupBox {
            VStack {
                HStack {
                    Text("Servings").foregroundColor(.gray).frame(minWidth: 80)
                    Picker("", selection: $servings) {
                        ForEach(1 ..< 5, id: \.self) { serving in
                            Text("\(serving)").tag(serving)
                        }
                    }.pickerStyle(.segmented)
                }
                
                HStack {
                    Text("Unit").foregroundColor(.gray).frame(minWidth: 80)
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
        } label: {
            Text("Ingredients (\(drink.ingredients.count))")
        }
    }
    
    @ViewBuilder
    func IngredientDetailPill(_ ingredient: IngredientWithVolume, servings: Int, unit: UnitVolume) -> some View {
        let bg = Color(hex: ingredient.ingredient.color) ?? .clear
        let fg = bg.contastColor
        
        HStack {
            if ingredient.unit?.symbol == "dash" || ingredient.unit?.symbol == "drop" {
                if let amount = ingredient.amount {
                    Text((amount * Double(servings)).formatted(.number))
                    Text(ingredient.unit?.symbol ?? "")
                }
            } else {
                if let amount = ingredient.toUnit(unit) {
                    Text((amount * Double(servings)).rounded(toPlaces: 1).formatted(.number))
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
        IngredientsInspector(Drinks.oldFashioned)
    }
}
