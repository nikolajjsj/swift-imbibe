//
//  DrinkStepInstructions.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 15/01/2023.
//

import SwiftUI

struct DrinkStepInstructions: View {
    let drink: Drink
    
    init(_ drink: Drink) {
        self.drink = drink
    }
    
    var body: some View {
        VStack {
            Text("Steps (\(drink.steps.count))")
                .font(.headline)
                .padding(.bottom)
            
            ForEach(Array(drink.steps.enumerated()), id: \.offset) { index, step in
                HStack {
                    Text("\(index + 1)")
                        .font(.title3.bold())
                        .frame(width: 30)
                    
                    Text(step.string)
                    
                    Spacer()
                }
                
                Divider()
            }
        }.detailCard()
    }
}

struct DrinkStepInstructions_Previews: PreviewProvider {
    static var previews: some View {
        DrinkStepInstructions(Drinks.instance.mojito)
    }
}
