//
//  MyBarView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

struct MyBarView: View {
    @AppStorage(LocalStorageKeys.barIngredients.rawValue) var selected: [String] = []
    
    var body: some View {
        TabView {
            SelectableIngredients()
                .tabItem {
                    Text("Ingredients (\(selected.count))")
                    Image(systemName: Icons.ingredients)
                }
            
            DrinksList(drinks: drinks)
                .tabItem {
                    Text("Drinks (\(drinks.count))")
                    Image(systemName: Icons.drinks)
                }
        }
        .navigationTitle("My Bar")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    var drinks: [Drink] {
        Drinks.all.filter({ $0.ingredients.allSatisfy({ selected.contains($0.ingredient.name) }) })
    }
}

struct SelectableIngredients: View {
    @AppStorage(LocalStorageKeys.barIngredients.rawValue) var selected: [String] = []
    @State private var query = ""
    
    @State private var all: [Ingredient] = Ingredients.all
    
    var body: some View {
        let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(filtered) { ingredient in
                    let idx = selected.firstIndex(of: ingredient.name)
                    let isSelected = idx != nil
                    
                    VStack {
                        Spacer()
                        Image(ingredient.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        Text(ingredient.name).font(.headline).lineLimit(1)
                        Spacer()
                    }
                    .padding(8)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.regularMaterial))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(isSelected ? .blue : .gray, lineWidth: 4)
                    )
                    .onTapGesture {
                        if let idx {
                            selected.remove(at: idx)
                        } else {
                            selected.append(ingredient.name)
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
        .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always))
    }
   
    @MainActor
    var filtered: [Ingredient] {
        if query.isEmpty {
            return all
        } else {
            return all.filter({ $0.name.localizedCaseInsensitiveContains(query) })
        }
    }
    
    var drinks: [Drink] {
        Drinks.all.filter({ $0.ingredients.allSatisfy({ selected.contains($0.ingredient.name) }) })
    }
}

struct MyBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MyBarView()
        }
    }
}
