//
//  DrinkDetails.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 15/01/2023.
//

import SwiftUI

struct DrinkDetails: View {
    let drink: Drink
    
    init(_ drink: Drink) {
        self.drink = drink
    }
    
    var body: some View {
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
        }.detailCard()
    }
}

struct DrinkDetails_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetails(Drinks.mojito)
    }
}
