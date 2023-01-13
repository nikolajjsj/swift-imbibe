//
//  IngredientCard.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct IngredientCard: View {
    let ingredient: Ingredient
    
    @State private var image: UIImage?
    @State private var bgColor: Color = .clear
    @State private var fgColor: Color = .label
    
    var body: some View {
        NavigationLink(value: Route.ingredient(ingredient)) {
            HStack {
                if let image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 60)
                }
                
                VStack(alignment: .leading) {
                    Text(ingredient.name).font(.headline.bold()).lineLimit(1)
                    Text("\(ingredient.strength)%").opacity(0.75)
                }
                Spacer()
            }
        }
        .foregroundColor(fgColor)
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(RoundedRectangle(cornerRadius: 10).fill(bgColor))
        .task {
            image = UIImage.init(named: ingredient.name)
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

struct IngredientCard_Previews: PreviewProvider {
    static var previews: some View {
        IngredientCard(ingredient: Ingredients.ryeWhisky)
    }
}
