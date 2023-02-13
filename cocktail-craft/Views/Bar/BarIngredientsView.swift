//
//  MyBarView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

struct ToggleStates {
    var basics: Bool = true
    var spirits: Bool = true
    var all: Bool = true
}

struct BarIngredientsView: View {
    @Environment(\.managedObjectContext) private var moc
    
    @FetchRequest(sortDescriptors: [], animation: .default) var selected: FetchedResults<SelectedIngredient>
    
    @State private var query = ""
    @State private var all: [Ingredient] = Ingredients.instance.all
    @State private var basics: [Ingredient] = Ingredients.instance.all.filter({ $0.tags.contains(.base) })
    @State private var spirits: [Ingredient] = Ingredients.instance.all.filter({ $0.tags.contains(.spirit) })
    
    @State private var toggles = ToggleStates()
    
    @State private var selectedIngredient: Ingredient? = nil
    
    var body: some View {
        let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        
        ScrollView {
            LazyVStack(alignment: .leading) {
                if query.isEmpty {
                    Text("Basics (\(basics.count))").font(.title2.bold())
                    LazyVGrid(columns: columns) {
                        ForEach(basics, content: selectableIngredientCard)
                    }
                    
                    Text("Spirits (\(spirits.count))").font(.title2.bold())
                    LazyVGrid(columns: columns) {
                        ForEach(spirits, content: selectableIngredientCard)
                    }
                    
                    Text("All (\(all.count))").font(.title2.bold())
                    LazyVGrid(columns: columns) {
                        ForEach(all, content: selectableIngredientCard)
                    }
                } else {
                    Text("\(filtered.count) results")
                        .foregroundColor(.gray)
                        .padding(.vertical)
                    LazyVGrid(columns: columns) {
                        ForEach(filtered, content: selectableIngredientCard)
                    }
                }
            }.padding(.horizontal)
        }
        .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always))
        .navigationBarTitle("My Ingredients")
        .sheet(item: $selectedIngredient, content: { i in IngredientView(ingredient: i) })
    }
    
    @ViewBuilder
    func selectableIngredientCard(ingredient: Ingredient) -> some View {
        let selectedIngredient = selected.first(where: { $0.name == ingredient.name })
        
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
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(selectedIngredient != nil ? ingredient.color : .clear))
        .foregroundColor(selectedIngredient != nil ? ingredient.color.contrastColor : nil)
        .onTapGesture {
            if let selectedIngredient {
                moc.delete(selectedIngredient)
                moc.quickSave()
            } else {
                let selection = SelectedIngredient(context: moc)
                selection.name = ingredient.name
                moc.quickSave()
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
    
    var drinks: [Drink] {
        let selections = selected.map({ $0.name! })
        return Drinks.instance.available(selections: selections)
    }
}

struct BarIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BarIngredientsView()
        }
    }
}
