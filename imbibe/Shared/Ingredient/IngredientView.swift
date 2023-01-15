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
                if let image = UIImage.init(named: ingredient.image) {
                    Image(uiImage: image)
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: UIScreen.main.bounds.size.height)
                        .padding()
                        .position(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 5)
                        .blur(radius: 60)
                }
                
                VStack {
                    if let image = UIImage.init(named: ingredient.image) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: min(image.size.height, UIScreen.main.bounds.size.height / 3))
                            .padding()
                    }
                    
                    VStack {
                        Text(ingredient.name)
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
                    }.detailCard().padding(.bottom, 42)
                    
                    VStack {
                        Text("Drinks with \(ingredient.name)")
                        LazyVGrid(columns: [ GridItem(.flexible()), GridItem(.flexible()) ]) {
                            ForEach(drinksWithIngredient) { drink in
                                DrinkCard(drink: drink)
                            }
                        }
                    }.detailCard()
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
