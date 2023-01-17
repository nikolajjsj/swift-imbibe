//
//  DrinkFilters.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 17/01/2023.
//

import SwiftUI


struct DrinkFilters: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject private var vm = ViewModel()
    
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
                Button(role: .destructive, action: { vm.clearAll() }, label: {
                    Text("Clear")
                })
            }
            .padding(.horizontal)
            .padding(.vertical)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Strength").font(.headline)
                    LazyVStack {
                        ForEach(DrinkFilters.ViewModel.Strength.allCases, id: \.self) { strength in
                            FilterOption(
                                label: strength.rawValue.description,
                                selected: vm.strengths.contains(strength),
                                onChanged: { vm.updateStrengths(strength) }
                            )
                        }
                    }.padding(.bottom, 32)
                    
                    Text("Era").font(.headline)
                    LazyVStack {
                        ForEach(DrinkFilters.ViewModel.Era.allCases, id: \.self) { era in
                            FilterOption(
                                label: era.label,
                                selected: vm.eras.contains(era),
                                onChanged: { vm.updateEras(era) }
                            )
                        }
                    }
                }.padding(.horizontal)
            }
            
            Button {
                onChanged(vm.drinks)
                dismiss()
            } label: {
                Spacer()
                Text("Done (\(vm.drinks.count) Drinks)")
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
}

extension DrinkFilters {
    @MainActor
    final class ViewModel: ObservableObject {
        @Published private(set) var drinks: [Drink] = Drinks.all
        @Published private(set) var strengths: [Strength] = []
        @Published private(set) var eras: [Era] = []
        
        init() {
            if let strengths = UserDefaultsHelper.get(type: [String].self, forKey: .drinkStrength) {
                self.strengths = strengths.map{ Strength(rawValue: $0) }.compactMap{ $0 }
            }
            if let eras = UserDefaultsHelper.get(type: [String].self, forKey: .drinkEra) {
                self.eras = eras.map{ Era(rawValue: $0) }.compactMap{ $0 }
            }
            
            filteredByFilters()
        }
        
        func updateStrengths(_ strength: Strength) {
            if strengths.contains(strength) {
                strengths = strengths.filter({ $0 != strength })
            } else {
                strengths.append(strength)
            }
            UserDefaultsHelper.set(value: strengths.map({ $0.rawValue }), key: .drinkStrength)
            filteredByFilters()
        }
        
        func updateEras(_ era: Era) {
            if eras.contains(era) {
                eras = eras.filter({ $0 != era })
            } else {
                eras.append(era)
            }
            UserDefaultsHelper.set(value: eras.map({ $0.rawValue }), key: .drinkEra)
            filteredByFilters()
        }
        
        func clearAll() {
            strengths.removeAll()
            eras.removeAll()
            filteredByFilters()
        }
        
        private func filteredByFilters() {
            if strengths.isEmpty && eras.isEmpty {
                drinks = Drinks.all
                return
            }
            
            drinks = Drinks.all.filter({ drink in
                strengths.first(where: { $0.compareDrink(drink) }) != nil ||
                eras.first(where: { $0.compareDrink(drink) }) != nil
            })
        }
        
        enum Strength: String, CaseIterable {
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
        
        enum Era: String, CaseIterable {
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
    }
}

struct DrinkFilters_Previews: PreviewProvider {
    static var previews: some View {
        DrinkFilters { items in }
    }
}
