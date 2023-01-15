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
        let background = Color(hex: drink.color) ?? .clear
        let foreground = background.contastColor
        
        HStack {
            if let image = UIImage.init(named: drink.image) {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 60)
            }
            
            VStack(alignment: .leading) {
                Text(drink.name).font(.headline).multilineTextAlignment(.leading)
                Text("\(drink.ingredients.count) ingredients").opacity(0.75)
            }
            Spacer()
        }
        .foregroundColor(foreground)
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(RoundedRectangle(cornerRadius: 10).fill(background))
        .onTapGesture { presented.toggle() }
        .sheet(isPresented: $presented) { DrinkView(drink: drink) }
    }
}

struct DrinkCard_Previews: PreviewProvider {
    static var previews: some View {
        DrinkCard(drink: Drinks.oldFashioned)
    }
}