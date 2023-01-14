//
//  IngredientsInspector.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 14/01/2023.
//

import SwiftUI

enum MeasurementUnit: String, CaseIterable {
    case ml = "ml"
    case cl = "cl"
    case oz = "oz"
    case part = "part"
}

struct IngredientsInspector: View {
    let drink: Drink
    
    @State private var servings = 1
    @State private var unit: MeasurementUnit = .ml
    
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
                        ForEach(MeasurementUnit.allCases, id: \.self) { unit in
                            Text(unit.rawValue).tag(unit)
                        }
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
    func IngredientDetailPill(_ ingredient: IngredientWithVolume, servings: Int, unit: MeasurementUnit) -> some View {
        let bg = Color(hex: ingredient.ingredient.color) ?? .clear
        let fg = bg.contastColor
        
        HStack {
            if let dashes = ingredient.dashes {
                Text("\(dashes * servings) dash(-es)")
            } else if let volume = ingredient.volumeInML {
                Text(computeVolume(volume))
            } else if let pieces = ingredient.pieces {
                Text("\(pieces * servings) pieces")
            }
            Spacer()
            Text(ingredient.ingredient.name)
        }
        .lineLimit(1)
        .padding()
        .background(Capsule().fill(bg))
        .foregroundColor(fg)
    }
    
    func computeVolume(_ volume: Int) -> String {
        let value = volumeByUnitAndServings(volume).rounded(toPlaces: 1).formatted(.number)
        let unitString = unit.rawValue
        return "\(value) \(unitString)"
    }
    
    func volumeByUnitAndServings(_ volume: Int) -> Double {
        switch unit {
        case .ml:
            return Double(volume) * Double(servings)
        case .cl:
            return (Double(volume) / 10) * Double(servings)
        case .oz:
            return (Double(volume) * 0.0338140227) * Double(servings)
        case .part:
            let min = drink.ingredients.min(by: { ($0.volumeInML ?? .max) < ($1.volumeInML ?? .max) })
            let result: Double = Double(volume) / Double(min?.volumeInML ?? 1)
            return result
        }
    }
}

struct IngredientsInspector_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsInspector(Drinks.martini)
    }
}
