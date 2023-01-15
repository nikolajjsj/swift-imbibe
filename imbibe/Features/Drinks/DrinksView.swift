//
//  ContentView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI
import CoreData

enum DrinkStrengthScope: String, CaseIterable {
    case all = "All"
    case light = "Light"
    case medium = "Medium"
    case strong = "Strong"
}

struct DrinksView: View {
    @State private var drinks: [Drink] = Drinks.all
    
    @State private var query: String = ""
    @State private var drinkStrengthScope = DrinkStrengthScope.all
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [ GridItem(.flexible()), GridItem(.flexible()) ]) {
                ForEach(filtered) { d in
                    DrinkCard(drink: d)
                }
            }
            .padding(.horizontal)
            .navigationTitle("Drinks")
        }
        .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always))
        .searchScopes($drinkStrengthScope) {
            ForEach(DrinkStrengthScope.allCases, id: \.self) { strength in
                Text(strength.rawValue.description).tag(strength)
            }
        }
        .onChange(of: drinkStrengthScope) { _ in filteredByScopes() }
    }
    
    var filtered: [Drink] {
        if query.isEmpty {
            return drinks
        } else {
            return drinks.filter({ $0.name.localizedCaseInsensitiveContains(query) })
        }
    }
    
    func filteredByScopes() {
        DispatchQueue.main.async {
            switch drinkStrengthScope {
            case .all:
                drinks = Drinks.all
                break
            case .light:
                drinks = Drinks.all.filter({ $0.strength < 10 })
                break
            case .medium:
                drinks = Drinks.all.filter({ $0.strength < 20 })
                break
            case .strong:
                drinks = Drinks.all.filter({ $0.strength >= 20 })
                break
            }
        }
    }
}


struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinksView()
        }
    }
}
