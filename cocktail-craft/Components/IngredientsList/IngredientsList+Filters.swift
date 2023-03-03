//
//  IngredientsList+Filters.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 03/03/2023.
//

import SwiftUI

struct IngredientsFilters: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var vm: IngredientsListViewModel
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(Ingredient.Tag.allCases, id: \.self) { tag in
                        FilterOption(
                            label: tag.rawValue.description,
                            selected: vm.tags.contains(tag),
                            onChanged: { vm.updateTags(tag) }
                        )
                    }
                } header: {
                    Text("Type").font(.headline)
                }
            }
            .navigationTitle("\(vm.shownIngredients.count) Ingredients")
            .navigationBarTitleDisplayMode(.inline)
            .presentationDetents([.medium, .large])
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Clear") { vm.clearAll() }
                    .foregroundColor(.red)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
        }
    }
    
    @ViewBuilder
    func FilterOption(label: String, selected: Bool, onChanged: @escaping () -> ()) -> some View {
        Button(action: onChanged, label: {
            HStack {
                Text(label)
                Spacer()
                Image(systemName: selected ? "checkmark.square.fill" : "square")
                    .imageScale(.large)
            }
            .contentShape(Rectangle())
        })
        .buttonStyle(.plain)
        .padding(.vertical, 6)
    }
}

struct IngredientsFilters_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsFilters(vm: IngredientsListViewModel(ingredients: Ingredients.instance.all))
    }
}
