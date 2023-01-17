//
//  DrinkFilters.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 17/01/2023.
//

import SwiftUI

private enum Strength: String, CaseIterable {
    case light = "Light"
    case medium = "Medium"
    case strong = "Strong"
    
    func compareDrink(_ d: Drink) -> Bool {
        switch self {
        case .light:
            return d.strength < 10
        case .medium:
            return d.strength >= 10 && d.strength < 20
        case .strong:
            return d.strength >= 20
        }
    }
}

private enum Era: String, CaseIterable {
    case archaic = "Archaic"
    case golden = "Golden"
    case prohibition = "Prohibition"
    case postProhibition = "Post Prohibition"
    case cocktailReivival = "Cocktail Revival"
    case modernCocktail = "Modern Cocktail"
    
    func compareDrink(_ d: Drink) -> Bool {
        guard let year = d.year else { return false }
        switch self {
        case .archaic:
            return year < 1860
        case .golden:
            return year >= 1860 && year < 1920
        case .prohibition:
            return year >= 1920 && year < 1933
        case .postProhibition:
            return year >= 1933 && year < 1980
        case .cocktailReivival:
            return year >= 1980 && year < 2005
        case .modernCocktail:
            return year >= 2005
        }
    }
    
    var label: String {
        switch self {
        case .archaic:
            return self.rawValue + " (until 1860)"
        case .golden:
            return self.rawValue + " (1860 - 1920)"
        case .prohibition:
            return self.rawValue + " (1920 - 1933)"
        case .postProhibition:
            return self.rawValue + " (1933 - 1980)"
        case .cocktailReivival:
            return self.rawValue + " (1980 - 2005)"
        case .modernCocktail:
            return self.rawValue + " (from 2005)"
        }
    }
}

struct DrinkFilters: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var drinks: [Drink] = Drinks.all
    @State private var strengths: [Strength] = []
    @State private var eras: [Era] = []
    
    let onChanged: ([Drink]) -> ()
    
    var body: some View {
        VStack {
            HStack {
                Button(role: .cancel, action: { dismiss() }, label: {
                    Text("Cancel")
                })
                Spacer()
                Text("Filters").font(.headline)
                Spacer()
                Button(role: .destructive, action: {
                    strengths.removeAll()
                    eras.removeAll()
                    filteredByFilters()
                }, label: {
                    Text("Clear")
                })
            }
            .padding(.horizontal)
            .padding(.vertical)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Strength").font(.headline)
                    LazyVStack {
                        ForEach(Strength.allCases, id: \.self) { strength in
                            let selected = strengths.contains(strength)
                            FilterOption(label: strength.rawValue.description, selected: selected) {
                                if selected {
                                    strengths = strengths.filter({ $0 != strength })
                                } else {
                                    strengths.append(strength)
                                }
                                filteredByFilters()
                            }
                        }
                    }.padding(.bottom, 32)
                    
                    Text("Era").font(.headline)
                    LazyVStack {
                        ForEach(Era.allCases, id: \.self) { era in
                            let selected = eras.contains(era)
                            FilterOption(label: era.label, selected: selected) {
                                if selected {
                                    eras = eras.filter({ $0 != era })
                                } else {
                                    eras.append(era)
                                }
                                filteredByFilters()
                            }
                        }
                    }
                }.padding(.horizontal)
            }
            
            Button {
                onChanged(drinks)
                dismiss()
            } label: {
                Spacer()
                Text("Done (\(drinks.count) Drinks)")
                    .font(.title2.bold())
                    .padding(.vertical, 8)
                Spacer()
            }
            .buttonStyle(.borderedProminent)
            .padding(.horizontal)
        }
        .presentationDetents([.medium, .large])
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
    
    func filteredByFilters() {
        if strengths.isEmpty && eras.isEmpty {
            drinks = Drinks.all
            return
        }
        
        drinks = Drinks.all.filter({ drink in
            strengths.first(where: { $0.compareDrink(drink) }) != nil ||
            eras.first(where: { $0.compareDrink(drink) }) != nil
        })
    }
}

struct DrinkFilters_Previews: PreviewProvider {
    static var previews: some View {
        DrinkFilters { items in }
    }
}
