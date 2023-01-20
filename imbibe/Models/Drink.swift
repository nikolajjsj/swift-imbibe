//
//  DrinkModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation
import SwiftUI

class Drink: Identifiable, Equatable, Hashable {
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
        self.origin = origin
        self.equipments = equipments
        self.ingredients = ingredients
        self.steps = steps
    }
    
    var strength: Int {
        Int(ingredients.reduce(0.0, { $0 + Double($1.ingredient.strength) }) / Double(ingredients.count))
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
                return Ingredients.whisky.image
            case .gin:
                return Ingredients.gin.image
            case .rum:
                return Ingredients.rum.image
            case .vodka:
                return Ingredients.vodka.image
            case .tequila:
                return Ingredients.tequila.image
            case .cognac:
                return Ingredients.cognac.image
            default:
                return nil
            }
        }
        
        var drinks: [Drink] {
            switch self {
            case .whisky:
                return Drinks.whiskyBased
            case .gin:
                return Drinks.ginBased
            case .rum:
                return Drinks.rumBased
            case .vodka:
                return Drinks.vodkaBased
            case .tequila:
                return Drinks.tequilaBased
            case .cognac:
                return Drinks.cognacBased
            default:
                return []
            }
        }
    }
}
