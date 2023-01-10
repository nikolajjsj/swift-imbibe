//
//  DrinkModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

class Drink: Identifiable {
    let id: UUID
    let name: String
    let description: String
    let equipments: [Equipment]
    let ingredients: [IngredientWithVolume]
    let steps: [DrinkStep]
    let source: DrinkSource?
    
    init(id: UUID, name: String, description: String, equipments: [Equipment], ingredients: [IngredientWithVolume], steps: [DrinkStep], source: DrinkSource?) {
        self.id = id
        self.name = name
        self.description = description
        self.equipments = equipments
        self.ingredients = ingredients
        self.steps = steps
        self.source = source
    }
}

class DrinkStep: Identifiable {
    let id: UUID
    let string: String
    
    init(id: UUID, string: String) {
        self.id = id
        self.string = string
    }
}

class IngredientWithVolume: Identifiable {
    let id: UUID
    let ingredient: Ingredient
    let volumeInML: Int?
    let dashes: Int?
    
    init(id: UUID, ingredient: Ingredient, volumeInML: Int?, dashes: Int?) {
        self.id = id
        self.ingredient = ingredient
        self.volumeInML = volumeInML
        self.dashes = dashes
    }
}

class Ingredient: Identifiable {
    let id: UUID
    let name: String
    let strength: Int
    let origin: Origin?
    let description: String
    
    init(id: UUID, name: String, strength: Int, origin: Origin?, description: String) {
        self.id = id
        self.name = name
        self.strength = strength
        self.origin = origin
        self.description = description
    }
}

class Equipment: Identifiable {
    let id: UUID
    let name: String
    let description: String
    
    init(id: UUID, name: String, description: String) {
        self.id = id
        self.name = name
        self.description = description
    }
}

class Origin: Identifiable {
    let id: UUID
    let name: String
    let flag: String
    
    init(id: UUID, name: String, flag: String) {
        self.id = id
        self.name = name
        self.flag = flag
    }
}

class DrinkSource: Identifiable {
    let id: UUID
    let name: String
    let description: String
    let link: URL
    
    init(id: UUID, name: String, description: String, link: URL) {
        self.id = id
        self.name = name
        self.description = description
        self.link = link
    }
}
