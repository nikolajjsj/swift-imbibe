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
        
        HStack {
            if let image = UIImage.init(named: drink.image) {
                Image(uiImage: image)
                    .interpolation(.none)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 80)
            }
            
            VStack(alignment: .leading) {
                Text(drink.name)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                VStack {
                    Text("\(drink.ingredients.count) ingredients").lineLimit(1)
                    Text("\(drink.strength)% strength").lineLimit(1)
                }
                .font(.footnote)
                .opacity(0.9)
            }
            .foregroundColor(background.contrastColor)
            
            Spacer()
        }
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
        DrinkCard(drink: oldFashioned)
    }
}
