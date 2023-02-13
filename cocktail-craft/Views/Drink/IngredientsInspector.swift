//
//  IngredientsInspector.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 14/01/2023.
//

import SwiftUI

struct IngredientsInspector: View {
    @StateObject var vm: ViewModel
    @State private var sheetIngredient: Ingredient? = nil
    
    init(_ drink: Drink) {
        self._vm = StateObject(wrappedValue: ViewModel(drink: drink))
    }
    
    var body: some View {
        VStack {
            Text("Ingredients (\(vm.ingredientCount))").font(.headline)
            VStack {
                HStack {
                    Text("Servings").frame(minWidth: 80)
                    Picker("", selection: $vm.servings) {
                        ForEach(1 ..< 5, id: \.self) { serving in
                            Text("\(serving)").tag(serving)
                        }
                    }.pickerStyle(.segmented)
                }
                
                HStack {
                    Text("Unit").frame(minWidth: 80)
                    Picker("", selection: $vm.unit) {
                        Text(UnitVolume.milliliters.symbol).tag(UnitVolume.milliliters)
                        Text(UnitVolume.centiliters.symbol).tag(UnitVolume.centiliters)
                        Text(UnitVolume.fluidOunces.symbol).tag(UnitVolume.fluidOunces)
                        Text(UnitVolume.teaspoons.symbol).tag(UnitVolume.teaspoons)
                    }.pickerStyle(.segmented)
                }
            }.padding(.vertical, 6)
            
            ForEach(vm.drink.ingredients, content: IngredientDetailPill)
        }
        .detailCard()
        .sheet(item: $sheetIngredient, content: { i in IngredientView(ingredient: i) })
    }
    
    @ViewBuilder
    func IngredientDetailPill(i: IngredientWithVolume) -> some View {
        HStack {
            if let amount = vm.ingredientAmount(i) {
                Text(amount)
                if let unit = vm.ingredientUnit(i) {
                    Text(unit)
                }
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(i.ingredient.name)
                if let alt = vm.getAlternative(i), vm.shouldUseAlternative(i) {
                    Text("You can use **\(alt.name)** instead")
                        .font(.footnote)
                        .opacity(0.8)
                }
            }
        }
        .lineLimit(1)
        .padding(15)
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(i.ingredient.color))
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(Color.label, lineWidth: 1))
        .foregroundColor(i.ingredient.color.contrastColor)
        .onTapGesture { sheetIngredient = i.ingredient }
    }
}

extension IngredientsInspector {
    @MainActor
    final class ViewModel: ObservableObject {
        @Published var drink: Drink
        @Published var servings = 1
        @Published var unit: UnitVolume = .milliliters
        
        @FetchRequest(sortDescriptors: [], animation: .default) var selected: FetchedResults<SelectedIngredient>
        
        init(drink: Drink) {
            self.drink = drink
        }
        
        var ingredientCount: Int { drink.ingredients.count }
        
        func ingredientAmount(_ i: IngredientWithVolume) -> String? {
            let isCustomSymbol = ["dash", "drop", "piece"].contains(i.unit?.symbol)
            guard let amount = isCustomSymbol ? i.amount : i.toUnit(self.unit) else { return nil }
            
            return (amount * Double(self.servings)).rounded(toPlaces: 1).formatted(.number)
        }
        
        func ingredientUnit(_ i: IngredientWithVolume) -> String? {
            if ["dash", "drop", "piece"].contains(i.unit?.symbol) {
                return i.unit?.symbol
            } else {
                return unit.symbol
            }
        }
        
        func shouldUseAlternative(_ i: IngredientWithVolume) -> Bool {
            !selected.contains(where: { $0.name == i.ingredient.name }) && !i.ingredient.alternatives.isEmpty
        }
        
        func getAlternative(_ i: IngredientWithVolume) -> Ingredient? {
            i.ingredient.alternatives.first(where: { item in
                selected.contains(where: { $0.name == item.name })
            })
        }
    }
}

struct IngredientsInspector_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsInspector(Drinks.instance.whiskySour)
    }
}
