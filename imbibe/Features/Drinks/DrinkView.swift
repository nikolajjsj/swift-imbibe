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
            ZStack {
                if let image = UIImage.init(named: drink.name) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: UIScreen.main.bounds.size.height)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .position(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 5)
                        .blur(radius: 60)
                }
                
                LazyVStack {
                    if let image = UIImage.init(named: drink.name) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: UIScreen.main.bounds.size.height / 2.5)
                            .frame(maxHeight: 600)
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                    }
                    
                    GroupBox {
                        Grid(alignment: .leading, verticalSpacing: 16) {
                            GridRow {
                                Text("Ingredients").font(.headline)
                                WrappingHStack(models: drink.ingredients, viewGenerator: {i in
                                    IngredientBox(ingredient: i.ingredient)
                                }, horizontalSpacing: 4, verticalSpacing: 4)
                            }
                            Divider()
                            GridRow {
                                Text("Equipments").font(.headline)
                                WrappingHStack(models: drink.equipments, viewGenerator: {e in
                                    EquipmentBox(equipment: e)
                                }, horizontalSpacing: 4, verticalSpacing: 4)
                            }
                            GridRow {
                                Text("Origin").font(.headline)
                                Text(drink.origin.name + drink.origin.flag)
                            }
                        }
                    } label: {
                        Text(drink.name).font(.title3.bold())
                    }
                    
                    GroupBox {
                        ForEach(drink.ingredients, content: Ingredient)
                    } label: {
                        Text("Ingredients (\(drink.ingredients.count))").font(.title3.bold())
                    }
                    
                    GroupBox {
                        ForEach(Array(drink.steps.enumerated()), id: \.offset) { index, step in
                            Label {
                                Step(text: step.string)
                                Spacer()
                            } icon: {
                                Text("\(index + 1).").font(.title3.bold())
                            }
                            .padding(.vertical, 8)
                        }
                    } label: {
                        Text("Steps (\(drink.steps.count))").font(.title3.bold())
                    }
                }
            }
            .padding(.horizontal)
        }
    }
    
    @ViewBuilder
    func IngredientBox(ingredient: Ingredient) -> some View {
        let bg = Color(hex: ingredient.color) ?? .clear
        let fg = bg.contastColor
        
        NavigationLink(value: Route.ingredient(ingredient)) {
            Text(ingredient.name)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(RoundedRectangle(cornerRadius: 4).fill(bg)
                    .background(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1)))
                .foregroundColor(fg)
        }
    }
    
    @ViewBuilder
    func EquipmentBox(equipment: Equipment) -> some View {
        Text(equipment.name)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(RoundedRectangle(cornerRadius: 4).fill(.clear)
                .background(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1)))
            .foregroundColor(.black)
    }
    
    @ViewBuilder
    func Ingredient(i: IngredientWithVolume) -> some View {
        let bg = Color(hex: i.ingredient.color) ?? .clear
        let fg = bg.contastColor
        
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
        .background(Capsule().fill(bg))
        .foregroundColor(fg)
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
