//
//  BarView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 21/01/2023.
//

import SwiftUI

struct BarView: View {
    @EnvironmentObject var fvm: FavoritesViewModel
    @AppStorage(LocalStorageKeys.barIngredients.rawValue) var selected: [String] = []
    
    var body: some View {
        List {
            NavigationLink {
                BarDrinksView()
            } label: {
                ListItem(
                    image: "Drinks",
                    title: "Drinks (\(drinks.count))",
                    subtitle: "Select ingredients to visualize the power of your personal bar"
                )
            }
            
            NavigationLink {
                BarIngredientsView()
            } label: {
                ListItem(
                    image: "Ingredients",
                    title: "Ingredients (\(selected.count))",
                    subtitle: "Select ingredients to visualize the power of your personal bar"
                )
            }
            
            NavigationLink {
                FavoritesView()
            } label: {
                ListItem(
                    image: "Star",
                    title: "Favorites (\(fvm.favorites.count))",
                    subtitle: "Mark your favorites drinks, to get quick and easy access to them"
                )
            }
            
//            ListItem(
//                image: "Notes",
//                title: "Notes",
//                subtitle: "Add your own notes to each drink, eg. taste notes, drink tweaks, or thoughts"
//            )

//            NavigationLink {
//                EmptyView()
//            } label: {
//                ListItem(
//                    image: "Tips",
//                    title: "Tips",
//                    subtitle: "Our tips that will transform your drinks & experience in mixology"
//                )
//            }

            NavigationLink {
                BooksView()
            } label: {
                ListItem(
                    image: "Books",
                    title: "Books",
                    subtitle: "Our favorite books and all things drinks & alcohol"
                )
            }
        }
        .navigationTitle("Your Bar")
    }
    
    var drinks: [Drink] { Drink.available(selections: selected) }
    
    @ViewBuilder
    func ListItem(image: String, title: String, subtitle: String) -> some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text(title).font(.title2.bold())
                Text(subtitle).foregroundColor(.gray)
            }
        }.padding(.vertical, 8)
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BarView()
        }
        .environmentObject(FavoritesViewModel())
    }
}
