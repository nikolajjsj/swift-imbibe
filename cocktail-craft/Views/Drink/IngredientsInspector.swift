//
//  IngredientsInspector.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 14/01/2023.
//

import SwiftUI

struct IngredientsInspector: View {
    @State var drink: Drink
    @State var servings = 1
    
    @AppStorage(LocalStorageKeys.unit.rawValue) var unit = UnitVolume.milliliters.symbol
    @FetchRequest(sortDescriptors: [], animation: .default) var selected: FetchedResults<SelectedIngredient>
    
    var body: some View {
        VStack {
            Text("Ingredients (\(ingredientCount))").font(.headline)
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
                        ForEach(usedUnitVolumeMetrics, id: \.symbol) { u in
                            Text(u.symbol)
                        }
                    }.pickerStyle(.segmented)
                }
            }.padding(.vertical, 6)
            
            ForEach(drink.ingredients) { ingredient in
                IngredientDetailPill(
                    amount: ingredientAmount(ingredient),
                    unit: ingredientUnit(ingredient),
                    ingredient: ingredient,
                    alternative: getAlternative(ingredient)
                )
            }
        }
        .detailCard()
    }
    
    var ingredientCount: Int { drink.ingredients.count }
    
    func ingredientAmount(_ i: IngredientWithVolume) -> String? {
        let isCustomSymbol = ["dash", "drop", "piece"].contains(i.unit?.symbol)
        let currentUnit = UnitVolume.fromSymbol(unit)
        guard let currentUnit else { return nil }
        guard let amount = isCustomSymbol ? i.amount : i.toUnit(currentUnit) else { return nil }
        
        return (amount * Double(self.servings)).rounded(toPlaces: 1).formatted(.number)
    }
    
    func ingredientUnit(_ i: IngredientWithVolume) -> String? {
        if ["dash", "drop", "piece"].contains(i.unit?.symbol) {
            return i.unit?.symbol
        } else {
            return unit
        }
    }
    
    func getAlternative(_ i: IngredientWithVolume) -> Ingredient? {
        let alternatives = i.ingredient.alternatives
        let selections = selected.map({ $0.name })
        return alternatives.first(where: { selections.contains($0.name) })
    }
}

struct IngredientDetailPill: View {
    var amount: String?
    var unit: String?
    var ingredient: IngredientWithVolume
    var alternative: Ingredient?
    
    @State private var sheetIngredient: Ingredient? = nil
    
    var body: some View {
        HStack {
            if let amount  {
                Text(amount)
                if let unit  {
                    Text(unit)
                }
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(ingredient.ingredient.name)
                if let alternative {
                    Text("You can use **\(alternative.name)** instead")
                        .font(.footnote)
                        .opacity(0.8)
                }
            }
        }
        .lineLimit(1)
        .padding(15)
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(ingredient.ingredient.color))
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(Color.label, lineWidth: 1))
        .foregroundColor(ingredient.ingredient.color.contrastColor)
        .onTapGesture { sheetIngredient = ingredient.ingredient }
        .sheet(item: $sheetIngredient, content: { i in IngredientView(ingredient: i) })
    }
}


struct IngredientsInspector_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsInspector(drink: espressoMartini)
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
