//
//  MyBarView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

struct BarIngredientsView: View {
    @AppStorage(LocalStorageKeys.barIngredients.rawValue) var selected: [String] = []
    @State private var query = ""
    @State private var all: [Ingredient] = Ingredients.all
    @State private var selectedIngredient: Ingredient? = nil
    
    var body: some View {
        let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(filtered, content: selectableIngredientCard)
            }
            .padding(.horizontal)
        }
        .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always))
        .navigationBarTitle("My Ingredients")
        .sheet(item: $selectedIngredient, content: { i in IngredientView(ingredient: i) })
    }
    
    @ViewBuilder
    func selectableIngredientCard(ingredient: Ingredient) -> some View {
        let idx = selected.firstIndex(of: ingredient.name)
        let isSelected = idx != nil
        
        VStack {
            Spacer()
            Image(ingredient.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 100)
            Text(ingredient.name)
                .bold()
                .lineLimit(2)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .padding(6)
        .frame(maxWidth: .infinity)
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(isSelected ? ingredient.color : .clear))
        .foregroundColor(isSelected ? ingredient.color.contrastColor : nil)
        .onLongPressGesture { selectedIngredient = ingredient }
        .onTapGesture {
            if let idx {
                selected.remove(at: idx)
            } else {
                selected.append(ingredient.name)
            }
        }
    }
    
    @MainActor
    var filtered: [Ingredient] {
        if query.isEmpty {
            return all
        } else {
            return all.filter({ $0.name.localizedCaseInsensitiveContains(query) })
        }
    }
    
    var drinks: [Drink] { Drinks.available(selections: selected) }
}

struct BarIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BarIngredientsView()
        }
    }
}
