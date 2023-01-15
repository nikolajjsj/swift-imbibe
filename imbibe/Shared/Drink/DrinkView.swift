//
//  DrinkView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI

struct DrinkView: View {
    let drink: Drink
    
    var body: some View {
        ScrollView {
            ZStack {
                if let image = UIImage.init(named: drink.image) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .frame(maxHeight: UIScreen.main.bounds.size.height)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .position(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 5)
                        .blur(radius: 60)
                }
                
                LazyVStack {
                    if let image = UIImage.init(named: drink.image) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: min(image.size.height, UIScreen.main.bounds.size.height / 3))
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                    }
                    
                    DrinkDetails(drink)
                    
                    IngredientsInspector(drink)
                    
                    DrinkStepInstructions(drink)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinkView(drink: Drinks.mojito)
        }
    }
}
