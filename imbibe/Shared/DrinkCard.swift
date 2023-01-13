//
//  DrinkCard.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct DrinkCard: View {
    let drink: Drink
    
    @State private var image: UIImage?
    @State private var bgColor: Color = .clear
    @State private var fgColor: Color = .label
    
    var body: some View {
        NavigationLink(value: Route.drink(drink)) {
            HStack {
                if let image {
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
        }
        .foregroundColor(fgColor)
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(RoundedRectangle(cornerRadius: 10).fill(bgColor))
        .task {
            image = UIImage.init(named: drink.name)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                let background = Color(uiColor: image?.averageColor ?? .clear)
                let foreground = bgColor.contastColor
                withAnimation {
                    bgColor = background
                    fgColor = foreground
                }
            }
        }
    }
}

struct DrinkCard_Previews: PreviewProvider {
    static var previews: some View {
        DrinkCard(drink: Drinks.oldFashioned)
    }
}
