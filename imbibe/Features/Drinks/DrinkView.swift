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
        ScrollView {
            LazyVStack {
                DrinkImage().background(.clear)
                
                facts.padding(.vertical, 24)
                
                VStack {
                    Text("Ingredients (\(drink.ingredients.count))").font(.title3.bold())
                    VStack {
                        ForEach(drink.ingredients, content: Ingredient)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1))
                }
                .padding(.vertical, 24)
                
                VStack {
                    Text("Steps (\(drink.steps.count))").font(.title3.bold())
                    
                    VStack {
                        ForEach(Array(drink.steps.enumerated()), id: \.offset) { index, step in
                            Label {
                                Step(text: step.string)
                                Spacer()
                            } icon: {
                                Text("\(index + 1).").font(.title3.bold())
                            }
                            Divider()
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1))
                }
                .padding(.vertical, 24)
            }
            .padding(.horizontal)
        }
        .navigationTitle(drink.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    var facts: some View {
        VStack {
            Text("Facts").font(.title3.bold())
            
            Grid(alignment: .leading, verticalSpacing: 16) {
                GridRow {
                    Text("Equipments").font(.headline)
                    WrappingHStack(models: drink.ingredients, viewGenerator: {i in
                        ItemBox(label: i.ingredient.name)
                    }, horizontalSpacing: 4, verticalSpacing: 4)
                }
                Divider()
                GridRow {
                    Text("Equipments").font(.headline)
                    WrappingHStack(models: drink.equipments, viewGenerator: {e in
                        ItemBox(label: e.name)
                    }, horizontalSpacing: 4, verticalSpacing: 4)
                }
                GridRow {
                    Text("Origin").font(.headline)
                    Text(drink.origin.name + drink.origin.flag)
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1))
        }
    }
    
    @ViewBuilder
    func ItemBox(label: String) -> some View {
        Text(label)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1))
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
            }
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
