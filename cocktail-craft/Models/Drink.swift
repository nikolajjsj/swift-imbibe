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
    let base: Base
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
        base: Base,
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
    
    var strength: Int {
        Int(ingredients.reduce(0.0, { $0 + Double($1.ingredient.strength) }) / Double(ingredients.count))
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
        case cognac = "Cognac"
        
        case other = "Other"
        
        static var all: [Base] {
            [.whisky, .gin, .rum, .vodka, .tequila, .cognac]
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
            case .cognac:
                return Ingredients.instance.cognac.image
            default:
                return nil
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
            case .cognac:
                return Drinks.instance.cognacBased
            default:
                return []
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
            ginFizz,
            hotToddy,
            irishCoffee,
            longIslandIceTea,
            maitai,
            manhattan,
            margarita,
            modernDeshler,
            modernDeshlerTwisted,
            mojito,
            moscowMule,
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
            romeoAndJuliet,
            rustyNail,
            sazerac,
            sidecar,
            tartan,
            theLastWord,
            theMomisette,
            theTradewinds,
            theWardEight,
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
    var cognacBased: [Drink] {
        all.filter({ $0.base == .cognac })
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
