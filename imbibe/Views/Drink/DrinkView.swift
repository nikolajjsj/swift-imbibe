//
//  DrinkView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI

struct DrinkView: View {
    @EnvironmentObject private var favorites: FavoritesViewModel
    
    let drink: Drink
    
    var body: some View {
        let isFavorited = favorites.favorites.contains(where: { $0.name == drink.name })
        
        ScrollView {
            ZStack(alignment: .topTrailing) {
                LazyVStack {
                    if let image = UIImage.init(named: drink.image) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: min(image.size.height, 300))
                            .padding(.vertical)
                    }
                    
                    DrinkDetails(drink)
                    
                    IngredientsInspector(drink)
                    
                    DrinkStepInstructions(drink)
                }
                
                Button {
                    favorites.toggleDrink(drink)
                } label: {
                    Image(systemName: isFavorited ? "star.fill" : "star")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                        .padding(4)
                        .background(Circle().fill(.white.opacity(0.2)))
                }
            }
            .padding()
        }
        .background(drink.color.gradient)
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinkView(drink: Drink.mojito)
        }
        .environmentObject(FavoritesViewModel())
    }
}
