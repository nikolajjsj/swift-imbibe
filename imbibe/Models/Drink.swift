//
//  DrinkModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

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
    let color: String
    let year: Int?
    let origin: Origin
    let equipments: [Equipment]
    let ingredients: [IngredientWithVolume]
    let steps: [DrinkStep]
    let source: DrinkSource?
    
    init(
        id: UUID = UUID(),
        name: String,
        description: String,
        image: String,
        color: String,
        year: Int? = nil,
        origin: Origin,
        equipments: [Equipment],
        ingredients: [IngredientWithVolume],
        steps: [DrinkStep],
        source: DrinkSource?
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.image = image
        self.color = color
        self.year = year
        self.origin = origin
        self.equipments = equipments
        self.ingredients = ingredients
        self.steps = steps
        self.source = source
    }
    
    var strength: Int {
        Int(ingredients.reduce(0.0, { $0 + Double($1.ingredient.strength) }) / Double(ingredients.count))
    }
}
