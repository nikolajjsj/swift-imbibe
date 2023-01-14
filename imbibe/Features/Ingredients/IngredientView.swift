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
        ScrollView {
            ZStack {
                if let image = UIImage.init(named: ingredient.name) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: UIScreen.main.bounds.size.height)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .position(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 5)
                        .blur(radius: 60)
                }
                
                VStack {
                    if let image = UIImage.init(named: ingredient.name) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: UIScreen.main.bounds.size.height / 2.5)
                            .frame(maxHeight: 600)
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                    }
                    
                    GroupBox {
                        Grid(alignment: .leading) {
                            Divider()
                            GridRow {
                                Text("Strength")
                                Text("\(ingredient.strength)%").bold()
                            }
                            Divider()
                            if let origin = ingredient.origin {
                                GridRow {
                                    Text("Origin")
                                    Text(origin.name + origin.flag).bold()
                                }
                                Divider()
                            }
                            if !ingredient.description.isEmpty {
                                GridRow {
                                    Text("Description")
                                    Text(ingredient.description)
                                }
                                Divider()
                            }
                        }
                    } label: {
                        Text(ingredient.name)
                    }.padding(.bottom, 42)
                    
                    Text("Drinks with \(ingredient.name)").font(.title3.bold())
                    LazyVStack {
                        ForEach(drinksWithIngredient) { drink in
                            DrinkCard(drink: drink)
                        }
                    }
                }
            }.padding(.horizontal)
        }
    }
    
    var drinksWithIngredient: [Drink] {
        Drinks.all.filter({ d in d.ingredients.contains(where: { i in i.ingredient.name == ingredient.name }) })
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IngredientView(ingredient: Ingredients.bourbonWhisky)
        }
    }
}
