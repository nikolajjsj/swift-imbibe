//
//  DrinkCard.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct DrinkCard: View {
    let drink: Drink
    
    @State private var presented = false
    
    var body: some View {
        let background = drink.color
        let foreground = background.contastColor
        
        ZStack {
            if let image = UIImage.init(named: drink.image) {
                Image(uiImage: image)
                    .interpolation(.none)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 80)
                    .blur(radius: 20)
            }
            
            HStack {
                if let image = UIImage.init(named: drink.image) {
                    Image(uiImage: image)
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 80)
                }
                
                VStack(alignment: .leading) {
                    Text(drink.name).font(.headline).multilineTextAlignment(.leading)
                    VStack {
                        Text("\(drink.ingredients.count) ingredients")
                        Text("\(drink.strength)% strength")
                    }.font(.footnote).opacity(0.8)
                }
                Spacer()
            }
        }
        .foregroundColor(foreground)
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(background)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .onTapGesture { presented.toggle() }
        .sheet(isPresented: $presented) { DrinkView(drink: drink) }
    }
}

struct DrinkCard_Previews: PreviewProvider {
    static var previews: some View {
        DrinkCard(drink: Drinks.oldFashioned)
    }
}
