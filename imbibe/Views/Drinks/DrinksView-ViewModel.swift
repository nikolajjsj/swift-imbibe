//
//  DrinksView-ViewModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 17/01/2023.
//

import Foundation

@MainActor
final class DrinksViewModel: ObservableObject {
    @Published private(set) var strengths: [Strength] = []
    @Published private(set) var eras: [Era] = []
    @Published private(set) var baseSpirits: [Drink.Base] = []
    
    @Published var sort: Sort = .name
    @Published var query: String = ""
    @Published var showFilters: Bool = false
    
    var drinks: [Drink] {
        var all: [Drink]
        if strengths.isEmpty && eras.isEmpty && baseSpirits.isEmpty {
            all = Drinks.instance.all
        } else {
            all = Drinks.instance.all.filter({ drink in
                strengths.first(where: { $0.compareDrink(drink) }) != nil ||
                eras.first(where: { $0.compareDrink(drink) }) != nil ||
                baseSpirits.contains(drink.base)
            })
        }
        
        switch sort {
        case .name:
            return all.sorted(by: { $0.name < $1.name })
        case .strength:
            return all.sorted(by: { $0.strength < $1.strength })
        }
    }
    
    var filtered: [Drink] {
        if query.isEmpty {
            return drinks
        } else {
            return drinks.filter({ $0.name.localizedCaseInsensitiveContains(query) })
        }
    }
    
    func updateStrengths(_ strength: Strength) {
        if strengths.contains(strength) {
            strengths = strengths.filter({ $0 != strength })
        } else {
            strengths.append(strength)
        }
    }
    
    func updateEras(_ era: Era) {
        if eras.contains(era) {
            eras = eras.filter({ $0 != era })
        } else {
            eras.append(era)
        }
    }
    
    func updateBaseSpirits(_ base: Drink.Base) {
        if baseSpirits.contains(base) {
            baseSpirits = baseSpirits.filter({ $0 != base })
        } else {
            baseSpirits.append(base)
        }
    }
    
    func clearAll() {
        strengths.removeAll()
        eras.removeAll()
        baseSpirits.removeAll()
    }
    
    enum Sort: String, CaseIterable {
        case name = "Name"
        case strength = "Strength"
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
