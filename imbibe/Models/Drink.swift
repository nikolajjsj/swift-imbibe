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
    let origin: Origin
    let equipments: [Equipment]
    let ingredients: [IngredientWithVolume]
    let steps: [DrinkStep]
    let source: DrinkSource?
    
    init(id: UUID = UUID(), name: String, description: String, origin: Origin, equipments: [Equipment], ingredients: [IngredientWithVolume], steps: [DrinkStep], source: DrinkSource?) {
        self.id = id
        self.name = name
        self.description = description
        self.origin = origin
        self.equipments = equipments
        self.ingredients = ingredients
        self.steps = steps
        self.source = source
    }
}
