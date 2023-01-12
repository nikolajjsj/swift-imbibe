//
//  DrinkView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI

struct DrinkView: View {
    let drink: Drink
    
    var body: some View {
        List {
            DrinkImage().background(.clear)
            
            facts
            
            Section {
                ForEach(drink.ingredients, content: Ingredient)
            } header: {
                Text("Ingredients (\(drink.ingredients.count))").font(.title3.bold())
            }.listRowSeparator(.hidden)
            
            Section {
                ForEach(Array(drink.steps.enumerated()), id: \.offset) { index, step in
                    Label {
                        Step(text: step.string)
                    } icon: {
                        Text("\(index + 1).").font(.title3.bold())
                    }
                }
            } header: {
                Text("Steps (\(drink.steps.count))").font(.title3.bold())
            }
        }
        .navigationTitle(drink.name)
    }
    
    var facts: some View {
        Section {
            Grid(alignment: .leading, verticalSpacing: 16) {
                GridRow {
                    Text("Equipments")
                    WrappingHStack(models: drink.ingredients, viewGenerator: {i in
                        IngredientCapsule(i: i.ingredient)
                    }, horizontalSpacing: 4, verticalSpacing: 4)
                }
                Divider()
                GridRow {
                    Text("Equipments")
                    WrappingHStack(models: drink.equipments, viewGenerator: {e in
                        EquipmentCapsule(e: e)
                    }, horizontalSpacing: 4, verticalSpacing: 4)
                }
                GridRow {
                    Text("Origin")
                    Text(drink.origin.name + drink.origin.flag).bold()
                }
            }
        } header: {
            Text("Facts").font(.title3.bold())
        }
    }
    
    @ViewBuilder
    func IngredientCapsule(i: Ingredient) -> some View {
        let image = UIImage.init(named: i.name)
        let bgColor = Color(uiColor: image?.averageColor ?? .clear)
        let fgColor = bgColor.contastColor
        
        Text(i.name)
            .foregroundColor(fgColor)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(RoundedRectangle(cornerRadius: 4).fill(bgColor))
            .bold()
    }
    
    @ViewBuilder
    func EquipmentCapsule(e: Equipment) -> some View {
        let image = UIImage.init(named: e.name)
        let bgColor = Color(uiColor: image?.averageColor ?? .clear)
        let fgColor = bgColor.contastColor
        
        Text(e.name)
            .foregroundColor(fgColor)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(RoundedRectangle(cornerRadius: 4).fill(bgColor))
            .bold()
    }
    
    
    @ViewBuilder
    func DrinkImage() -> some View {
        if let image = UIImage.init(named: drink.name) {
            HStack {
                Spacer()
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 300)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                Spacer()
            }.listRowSeparator(.hidden)
        }
    }
    
    @ViewBuilder
    func Ingredient(i: IngredientWithVolume) -> some View {
        let image = UIImage.init(named: i.ingredient.name)
        let bgColor = Color(uiColor: image?.averageColor ?? .clear)
        let fgColor = bgColor.contastColor
        
        HStack {
            HStack {
                if let dashes = i.dashes {
                    Text("\(dashes) dash(-es)")
                } else if let volume = i.volumeInML {
                    Text("\(volume) ml")
                } else if let pieces = i.pieces {
                    Text("\(pieces) pieces")
                } else {
                    Text("")
                }
            }.frame(minWidth: 90).bold()
            Text(i.ingredient.name)
            Spacer()
        }
        .padding()
        .background(Capsule().fill(bgColor))
        .foregroundColor(fgColor)
    }
    
    @ViewBuilder
    func Step(text: String) -> some View {
        Text(text)
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinkView(drink: Drinks.mojito)
        }
    }
}
