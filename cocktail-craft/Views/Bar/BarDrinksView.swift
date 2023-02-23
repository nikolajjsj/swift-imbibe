//
//  BarDrinksView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

struct BarDrinksView: View {
    @FetchRequest(sortDescriptors: [], animation: .default) var selected: FetchedResults<SelectedIngredient>
    
    @State private var helperSheet = false
    
    var body: some View {
        ScrollView {
            Button { helperSheet.toggle() } label: {
                Text("Need more drinks?")
                    .font(.headline)
                    .padding(.vertical, 5)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .padding(.horizontal)
            
            DrinksList(drinks: drinks)
        }
        .navigationTitle("Available Drinks")
        .sheet(isPresented: $helperSheet) { DrinksHelper() }
    }
    
    var drinks: [Drink] {
        let selections = selected.compactMap({ $0.name })
        return Drinks.instance.available(selections: selections)
    }
}

struct DrinksHelper: View {
    @Environment(\.managedObjectContext) private var moc
    @Environment(\.dismiss) var dismiss
    
    @FetchRequest(sortDescriptors: [], animation: .default) var selected: FetchedResults<SelectedIngredient>
    
    @State private var missingCount = 1
    @State private var confirmation = false
    @State private var ingredients: [Ingredient] = []
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    Picker("# missing ingredients", selection: $missingCount) {
                        ForEach(1...3, id: \.self) {
                            Text("\($0)").tag($0)
                        }
                    }
                }
                
                if sortedKeys.count == 0 {
                    Text("No cocktails with \(missingCount) missing ingredient\(missingCount > 1 ? "s" : "").")
                }
                
                ForEach(sortedKeys, id: \.self) { m in
                    let drinks = missing[m] ?? []
                    let names = m.map{$0.name}.joined(separator: ", ")
                    
                    Section {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Add: \(names)").font(.headline)
                                Text("\(drinks.count) additional drink\(drinks.count <= 1 ? "" : "s")")
                            }
                            Spacer()
                            Button {
                                ingredients = m
                                confirmation.toggle()
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .imageScale(.large)
                            }
                        }
                        
                        ForEach(drinks) {
                            DrinkCard(drink: $0)
                        }
                    }
                }
            }
            .navigationTitle("Helper")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
            .confirmationDialog("", isPresented: $confirmation) {
                Button("Yes, add: \(ingredients.map{$0.name}.joined(separator: ", "))") {
                    for ingredient in ingredients {
                        let selection = selected.first(where: { $0.name == ingredient.name })
                        
                        if selection == nil {
                            let newSelection = SelectedIngredient(context: moc)
                            newSelection.name = ingredient.name
                            moc.quickSave()
                        }
                    }
                }
            }
        }
    }
    
    var sortedKeys: [[Ingredient]] {
        let dict = missing.filter({ $0.key.count == missingCount })
        return Array(dict.keys)
            .sorted { lhs, rhs in
                let lhsArr = dict[lhs] ?? []
                let rhsArr = dict[rhs] ?? []
                
                if lhsArr.count == rhsArr.count {
                    return lhs.first?.name ?? "" < rhs.first?.name ?? ""
                }
                
                return lhsArr.count > rhsArr.count
            }
    }
    
    var missing: Dictionary<[Ingredient], [Drink]> {
        let selections = selected.map({ $0.name! })
        return Drinks.instance.missingIngredients(selections: selections)
    }
}

struct BarDrinksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BarDrinksView()
        }
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
