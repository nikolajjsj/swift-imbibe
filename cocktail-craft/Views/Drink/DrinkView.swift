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
            VStack {
                if let image = UIImage.init(named: drink.image) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: min(image.size.height, 300))
                        .padding(.vertical)
                }
                
                DrinkDetails(drink)
                
                IngredientsInspector(drink: drink)
                
                DrinkStepInstructions(drink)
            }
            .padding()
        }
        .background(drink.color.gradient)
        .overlay(alignment: .topTrailing) {
            Button {
                toggleFavorite()
            } label: {
                Image(systemName: isFavorited ? "star.fill" : "star")
                    .imageScale(.large)
                    .foregroundColor(.black)
                    .padding(6)
                    .background(Circle().fill(drink.color.contrastColor.opacity(0.2)))
            }
            .padding()
        }
    }
    
    func toggleFavorite() {
        if let favorite = favorites.first(where: { $0.name == drink.name }) {
            moc.delete(favorite)
            moc.quickSave()
        } else {
            let newFavorite = Favorite(context: moc)
            newFavorite.name = drink.name
            moc.quickSave()
        }
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinkView(drink: theZombie)
        }
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
