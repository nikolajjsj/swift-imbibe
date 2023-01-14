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
                        .scaledToFill()
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
                            .frame(maxHeight: min(image.size.height, UIScreen.main.bounds.size.height / 2.5))
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                    }
                    
                    VStack {
                        Text(drink.name)
                        
                        Grid(alignment: .leading) {
                            GridRow {
                                Text("Ingredients").font(.headline)
                                WrappingHStack(models: drink.ingredients, viewGenerator: {i in
                                    IngredientBox(i.ingredient)
                                }, horizontalSpacing: 4, verticalSpacing: 4)
                            }
                            Divider()
                            GridRow {
                                Text("Equipments").font(.headline)
                                WrappingHStack(models: drink.equipments, viewGenerator: {e in
                                    EquipmentBox(e)
                                }, horizontalSpacing: 4, verticalSpacing: 4)
                            }
                            Divider()
                            GridRow {
                                Text("Origin").font(.headline)
                                Text(drink.origin.name + drink.origin.flag)
                            }
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.primary.opacity(0.1)))
                    
                    IngredientsInspector(drink)
                    
                    VStack {
                        Text("Steps (\(drink.steps.count))")
                        Grid {
                            ForEach(Array(drink.steps.enumerated()), id: \.offset) { index, step in
                                HStack {
                                    Text("\(index + 1)")
                                        .font(.title3.bold())
                                        .frame(width: 30)
                                    Text(step.string)
                                    Spacer()
                                }
                                .padding(.vertical, 8)
                                Divider()
                            }
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.primary.opacity(0.1)))
                }
            }
            .padding(.horizontal)
        }
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinkView(drink: Drinks.mojito)
        }
    }
}
