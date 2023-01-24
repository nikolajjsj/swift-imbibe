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
            Text(drink.name).font(.headline)
            
            Grid(alignment: .leading, horizontalSpacing: 24) {
                GridRow {
                    Text("Strength").font(.headline)
                    Text("\(drink.strength)%")
                }
                Divider()
                GridRow {
                    Text("Origin").font(.headline)
                    Text(drink.origin.name + drink.origin.flag)
                }
                if let year = drink.year {
                    Divider()
                    GridRow {
                        Text("Year").font(.headline)
                        Text("\(year.description)")
                    }
                }
                Divider()
                GridRow {
                    Text("Equipments").font(.headline)
                    WrappingHStack(models: drink.equipments, viewGenerator: {e in
                        EquipmentBox(e)
                    }, horizontalSpacing: 4, verticalSpacing: 4)
                }
            }
        }.detailCard()
    }
}

struct DrinkDetails_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetails(Drink.mojito)
    }
}
