//
//  IngredientWithVolume.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import Foundation

class Ingredient: Identifiable, Equatable, Hashable {
    static func == (lhs: Ingredient, rhs: Ingredient) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let image: String
    let color: String
    let strength: Int
    let origin: Origin?
    let description: String
    let alternatives: [Ingredient]
    
    init(
        id: UUID = UUID(),
        name: String,
        image: String,
        color: String,
        strength: Int,
        origin: Origin?,
        description: String,
        alternatives: [Ingredient] = []
    ) {
        self.id = id
        self.name = name
        self.image = image
        self.color = color
        self.strength = strength
        self.origin = origin
        self.description = description
        self.alternatives = alternatives
    }
}

class IngredientWithVolume: Identifiable, Hashable {
    static func == (lhs: IngredientWithVolume, rhs: IngredientWithVolume) -> Bool {
        lhs.ingredient.name == rhs.ingredient.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ingredient.name)
    }
    
    let id: UUID
    let ingredient: Ingredient
    let amount: Double?
    let unit: UnitVolume?
    
    init(
        id: UUID = UUID(),
        ingredient: Ingredient,
        amount: Double? = nil,
        unit: UnitVolume? = nil
    ) {
        self.id = id
        self.ingredient = ingredient
        self.amount = amount
        self.unit = unit
    }
    
    func toUnit(_ to: UnitVolume) -> Double? {
        guard let amount = amount, let unit = unit else { return nil }
        
        let m = Measurement(value: amount, unit: unit)
        return m.converted(to: to).value
    }
}

extension UnitVolume {
    static let dash = UnitVolume(symbol: "dash")
    static let drop = UnitVolume(symbol: "drop")
    static let piece = UnitVolume(symbol: "piece")
}

