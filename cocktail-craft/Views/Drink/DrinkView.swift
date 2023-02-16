//
//  DrinkView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI

struct DrinkView: View {
    @Environment(\.managedObjectContext) private var moc
    @FetchRequest(sortDescriptors: [], animation: .default) var favorites: FetchedResults<Favorite>
    
    let drink: Drink
    
    var body: some View {
        let isFavorited = favorites.contains(where: { $0.name == drink.name })
        
        ScrollView {
            ZStack(alignment: .topTrailing) {
                VStack {
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
                    if let favorite = favorites.first(where: { $0.name == drink.name }) {
                        moc.delete(favorite)
                        moc.quickSave()
                    } else {
                        let newFavorite = Favorite(context: moc)
                        newFavorite.name = drink.name
                        moc.quickSave()
                    }
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
            DrinkView(drink: jetPilot)
        }
    }
}
