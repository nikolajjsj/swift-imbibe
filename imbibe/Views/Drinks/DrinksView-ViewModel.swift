//
//  DrinksView-ViewModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 17/01/2023.
//

import Foundation

@MainActor
final class DrinksViewModel: ObservableObject {
    @Published private(set) var drinks: [Drink] = Drink.all
    @Published private(set) var strengths: [Strength] = []
    @Published private(set) var eras: [Era] = []
    
    func updateStrengths(_ strength: Strength) {
        if strengths.contains(strength) {
            strengths = strengths.filter({ $0 != strength })
        } else {
            strengths.append(strength)
        }
        filteredByFilters()
    }
    
    func updateEras(_ era: Era) {
        if eras.contains(era) {
            eras = eras.filter({ $0 != era })
        } else {
            eras.append(era)
        }
        filteredByFilters()
    }
    
    func clearAll() {
        strengths.removeAll()
        eras.removeAll()
        filteredByFilters()
    }
    
    private func filteredByFilters() {
        if strengths.isEmpty && eras.isEmpty {
            drinks = Drink.all
            return
        }
        
        drinks = Drink.all.filter({ drink in
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