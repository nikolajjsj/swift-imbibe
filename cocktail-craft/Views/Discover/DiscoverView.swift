//
//  DiscoverView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct DiscoverView: View {
    @AppStorage(LocalStorageKeys.discoverMissingIngredientTip.rawValue) var discoverMissingIngredientTip: Bool = true
    @AppStorage(LocalStorageKeys.discoverStylesList.rawValue) var discoverStylesList: Bool = true
    @AppStorage(LocalStorageKeys.discoverCountriesList.rawValue) var discoverCountriesList: Bool = true
    
    @FetchRequest(sortDescriptors: [], animation: .default) var selected: FetchedResults<SelectedIngredient>
    
    var body: some View {
        let columns = Array.init(repeating: GridItem(.flexible()), count: 2)
        
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 42) {
                if let image = UIImage.init(named: "Tips") {
                    HStack {
                        Spacer()
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 240)
                        Spacer()
                    }
                }
                
                if discoverMissingIngredientTip, let bestIngredient {
                    VStack(alignment: .leading) {
                        SectionLabel("Tips")
                        TipBox("Adding \(bestIngredient.key[0].name) to your bar will add \(bestIngredient.value.count) cocktail\(bestIngredient.value.count == 1 ? "" : "s")")
                    }
                }
                
                if discoverStylesList {
                    VStack(alignment: .leading) {
                        SectionLabel("Styles")
                        LazyVGrid(columns: columns) {
                            ForEach(Drink.Category.all, id: \.rawValue) { category in
                                NavigationLink {
                                    DrinksListView(drinks: category.drinks)
                                        .navigationTitle(category.rawValue)
                                } label: {
                                    VStack {
                                        if let image = category.image {
                                            Image(image)
                                                .resizable()
                                                .scaledToFit()
                                                .frame(maxWidth: 120, maxHeight: 120)
                                        }
                                        Text(category.rawValue)
                                            .font(.headline.bold())
                                    }
                                    .padding(.vertical, 5)
                                    .frame(maxWidth: .infinity)
                                }
                                .buttonStyle(.bordered)
                            }
                        }
                    }
                }
                
                VStack(alignment: .leading) {
                    SectionLabel("Base Spirit")
                    LazyVGrid(columns: columns) {
                        ForEach(Drink.Base.all, id: \.rawValue) { base in
                            NavigationLink {
                                DrinksListView(drinks: base.drinks)
                                    .navigationTitle("\(base.rawValue) Based")
                            } label: {
                                if let image = base.image {
                                    Spacer()
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxHeight: 75)
                                        .padding(.vertical, 5)
                                }
                                FillLabel(base.rawValue)
                            }
                            .buttonStyle(.bordered)
                        }
                    }
                }
                
                if discoverCountriesList {
                    VStack(alignment: .leading) {
                        SectionLabel("Origins")
                        LazyVGrid(columns: columns) {
                            ForEach(Array(Drinks.instance.countries.keys).sorted(by: { $0.name < $1.name }), id: \.name) { origin in
                                NavigationLink {
                                    DrinksListView(drinks: Drinks.instance.countries[origin] ?? [])
                                        .navigationTitle("\(origin.flag)\(origin.name)")
                                } label: {
                                    Spacer()
                                    Text(origin.flag).font(.title)
                                    FillLabel(origin.name)
                                }
                                .buttonStyle(.bordered)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
        .navigationTitle("Discover")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    @ViewBuilder
    func TipBox(_ tip: String) -> some View {
        HStack {
            Image(systemName: "lightbulb.2.fill")
                .foregroundColor(.yellow)
                .font(.title)
                .padding(.trailing)
            
            Text(tip)
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(RoundedRectangle(cornerRadius: 10).fill(.regularMaterial))
    }
    
    @ViewBuilder
    func FillLabel(_ label: String) -> some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(label).font(.headline).lineLimit(1)
                Spacer()
            }
            Spacer()
        }
    }
    
    @ViewBuilder
    func SectionLabel(_ label: String) -> some View {
        Text(label)
            .font(.headline)
            .foregroundColor(.gray)
    }
}

private extension DiscoverView {
    var bestIngredient: Dictionary<[Ingredient], [Drink]>.Element? {
        let selections = selected.map({ $0.name! })
        let missing = Drinks.instance.missingIngredients(selections: selections)
        
        let dict = missing.filter({ $0.key.count == 1 && $0.value.count >= 2 })
        return dict.max(by: { $0.value.count > $1.value.count })
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DiscoverView()
        }
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
