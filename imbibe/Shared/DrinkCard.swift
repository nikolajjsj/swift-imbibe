//
//  DrinkCard.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct DrinkCard: View {
    let drink: Drink
    
    var body: some View {
        let image = UIImage.init(named: drink.name)
        let bgColor = Color(uiColor: image?.averageColor ?? .clear)
        let fgColor = bgColor.contastColor
        
        NavigationLink(value: Route.drink(drink)) {
            HStack {
                if let image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 62)
                        .frame(maxHeight: 80)
                        .padding(.trailing, 8)
                }
                
                VStack(alignment: .leading) {
                    Text(drink.name).font(.title2.bold())
                    if let description = drink.description, !drink.description.isEmpty {
                        Text(description)
                    }
                }
                Spacer()
            }
        }
        .foregroundColor(fgColor)
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(RoundedRectangle(cornerRadius: 10).fill(bgColor))
    }
}

struct DrinkCard_Previews: PreviewProvider {
    static var previews: some View {
        DrinkCard(drink: Drinks.oldFashioned)
    }
}
