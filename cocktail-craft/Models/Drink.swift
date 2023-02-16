//
//  DrinkModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation
import SwiftUI

final class Drink: Identifiable, Equatable, Hashable {
    static func == (lhs: Drink, rhs: Drink) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let description: String
    let image: String
    let color: Color
    let year: Int?
    let base: Base?
    let category: Category?
    let origin: Origin
    let equipments: [Equipment]
    let ingredients: [IngredientWithVolume]
    let steps: [DrinkStep]
    
    init(
        id: UUID = UUID(),
        name: String,
        description: String,
        image: String,
        color: Color,
        year: Int? = nil,
        base: Base? = nil,
        category: Category? = nil,
        origin: Origin,
        equipments: [Equipment],
        ingredients: [IngredientWithVolume],
        steps: [DrinkStep]
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.image = image
        self.color = color
        self.year = year
        self.base = base
        self.category = category
        self.origin = origin
        self.equipments = equipments
        self.ingredients = ingredients
        self.steps = steps
    }
    
    private var drinkVolume: Double {
        var volume = 0.0
        
        for ingredient in ingredients {
            guard let unit = ingredient.unit else { continue }
            let skippedSymbols = ["piece"]
            guard !skippedSymbols.contains(unit.symbol) else { continue }
            
            guard let amount = ingredient.toUnit(.milliliters) else { continue }
            
            volume += amount
        }
        
        return volume
    }
    
    
    var strength: Int {
        let alcohols = ingredients.filter({ $0.ingredient.strength != 0 })
        
        var alcoholContent = 0.0
        for alcohol in alcohols {
            if alcohol.unit != .milliliters { continue }
            alcoholContent += ( (Double(alcohol.ingredient.strength) / 100) * (alcohol.amount ?? 0.0) )
        }
        
        return Int((alcoholContent / drinkVolume) * 100)
    }
    
    enum Category: String {
        case tiki = "Tiki"
        case sour = "Sour"
        
        static var all: [Category] {
            [.tiki, .sour]
        }
        
        var image: String? {
            switch self {
            case .tiki:
                return "CategoryTiki"
            case .sour:
                return "CategorySour"
            }
        }
        
        var drinks: [Drink] {
            switch self {
            case .tiki:
                return Drinks.instance.tikiDrinks
            case .sour:
                return Drinks.instance.sourDrinks
            }
        }
    }
    
    enum Base: String {
        case whisky = "Whisky"
        case gin = "Gin"
        case rum = "Rum"
        case vodka = "Vodka"
        case tequila = "Tequila"
        case brandy = "Brandy"
        
        static var all: [Base] {
            [.whisky, .gin, .rum, .vodka, .tequila, .brandy]
        }
        
        var image: String? {
            switch self {
            case .whisky:
                return Ingredients.instance.whisky.image
            case .gin:
                return Ingredients.instance.gin.image
            case .rum:
                return Ingredients.instance.rum.image
            case .vodka:
                return Ingredients.instance.vodka.image
            case .tequila:
                return Ingredients.instance.tequila.image
            case .brandy:
                return Ingredients.instance.brandy.image
            }
        }
        
        var drinks: [Drink] {
            switch self {
            case .whisky:
                return Drinks.instance.whiskyBased
            case .gin:
                return Drinks.instance.ginBased
            case .rum:
                return Drinks.instance.rumBased
            case .vodka:
                return Drinks.instance.vodkaBased
            case .tequila:
                return Drinks.instance.tequilaBased
            case .brandy:
                return Drinks.instance.brandyBased
            }
        }
    }
}

final class Drinks {
    static let instance = Drinks()
    private init() { }
    
    var all: [Drink] {
        [
            _12MileLimit,
            americano,
            aviation,
            bourbonRenewal,
            brooklyn,
            classicMartini,
            corpseReviver,
            cubaLibre,
            daiquiri,
            darkAndStormy,
            deshler,
            dirtyMartini,
            elDiablo,
            espressoMartini,
            fityFiftyMartini,
            fogCutter,
            ford,
            ginFizz,
            hotToddy,
            irishCoffee,
            jetPilot,
            longIslandIceTea,
            maitai,
            manhattan,
            margarita,
            modernDeshler,
            modernDeshlerTwisted,
            mojito,
            moscowMule,
            navyGrog,
            negroni,
            newYourSour,
            oaxacaOldFashioned,
            oldFashioned,
            perfectMartini,
            painkiller,
            paperPlane,
            penicillin,
            pinaColada,
            piscoOldFashioned,
            rumOldFashioned,
            rollsRoyce,
            romeoAndJuliet,
            rustyNail,
            sazerac,
            sidecar,
            tartan,
            theBijou,
            theBramble,
            theLastWord,
            theMomisette,
            theScofflaw,
            theTradewinds,
            theWardEight,
            theZombie,
            trinidadEspecial,
            trinidadSour,
            whiskySour,
            whiteNegroni,
            whiteRussian,
            wisconsinOldFashioned,
        ]
    }
    
    // Base spirit
    var ginBased: [Drink] {
        all.filter({ $0.base == .gin })
    }
    var whiskyBased: [Drink] {
        all.filter({ $0.base == .whisky })
    }
    var rumBased: [Drink] {
        all.filter({ $0.base == .rum })
    }
    var brandyBased: [Drink] {
        all.filter({ $0.base == .brandy })
    }
    var tequilaBased: [Drink] {
        all.filter({ $0.base == .tequila })
    }
    var vodkaBased: [Drink] {
        all.filter({ $0.base == .vodka })
    }
    
    // Categories
    var tikiDrinks: [Drink] {
        all.filter({ $0.category == .tiki })
    }
    var sourDrinks: [Drink] {
        all.filter({ $0.category == .sour })
    }
    
    // Country
    var countries: Dictionary<Origin, [Drink]> {
        Dictionary(grouping: all, by: { $0.origin})
    }
    
    // Get all drinks that are available with the gives ingredients
    func available(selections: [String]) -> [Drink] {
        all.filter({ $0.ingredients.allSatisfy({
            selections.contains($0.ingredient.name)
            || !Set(selections).isDisjoint(with: $0.ingredient.alternatives.map({ $0.name }))
        }) })
    }
    
    // See which ingredients are missing for drinks
    func missingIngredients(selections: [String]) -> Dictionary<[Ingredient], [Drink]> {
        let hasMissingIngredients = all.filter({ !$0.ingredients.allSatisfy({ selections.contains($0.ingredient.name) }) })
        
        return Dictionary(
            grouping: hasMissingIngredients,
            by: { $0.ingredients.map{ $0.ingredient }.filter({ !selections.contains($0.name) }) }
        )
    }
}
