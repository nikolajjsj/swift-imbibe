//
//  IngredientView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct IngredientView: View {
    @Environment(\.managedObjectContext) private var moc
    @FetchRequest(sortDescriptors: [], animation: .default) var selections: FetchedResults<SelectedIngredient>
    
    let ingredient: Ingredient
    
    var body: some View {
        let isSelected = selections.contains(where: { $0.name == ingredient.name })
        
        ScrollView {
            VStack {
                if let image = UIImage.init(named: ingredient.image) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: min(image.size.height, 300))
                        .padding(.vertical)
                }
                
                IngredientDetails(ingredient)
                
                IngredientDrinksList(ingredient)
            }
            .padding(.horizontal)
        }
        .background(ingredient.color.gradient)
        .overlay(alignment: .topTrailing) {
            Button {
                toggleIngredientSelection()
            } label: {
                Image(systemName: isSelected ? "plus.circle" : "checkmark.circle.fill")
                    .font(.title)
                    .foregroundColor(.primary)
            }
            .padding()
        }
    }
    
    func toggleIngredientSelection() {
        if let selection = selections.first(where: { $0.name == ingredient.name }) {
            moc.delete(selection)
            moc.quickSave()
        } else {
            let newSelection = SelectedIngredient(context: moc)
            newSelection.name = ingredient.name
            moc.quickSave()
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IngredientView(ingredient: Ingredients.instance.aperol)
        }
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
