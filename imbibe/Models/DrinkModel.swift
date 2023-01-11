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
    let equipments: [Equipment]
    let ingredients: [IngredientWithVolume]
    let steps: [DrinkStep]
    let source: DrinkSource?
    
    init(id: UUID = UUID(), name: String, description: String, equipments: [Equipment], ingredients: [IngredientWithVolume], steps: [DrinkStep], source: DrinkSource?) {
        self.id = id
        self.name = name
        self.description = description
        self.equipments = equipments
        self.ingredients = ingredients
        self.steps = steps
        self.source = source
    }
}

class DrinkStep: Identifiable, Hashable {
    static func == (lhs: DrinkStep, rhs: DrinkStep) -> Bool {
        lhs.string == rhs.string
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(string)
    }
    
    let id: UUID
    let string: String
    
    init(id: UUID = UUID(), string: String) {
        self.id = id
        self.string = string
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
    let volumeInML: Int?
    let dashes: Int?
    
    init(id: UUID = UUID(), ingredient: Ingredient, volumeInML: Int?, dashes: Int?) {
        self.id = id
        self.ingredient = ingredient
        self.volumeInML = volumeInML
        self.dashes = dashes
    }
}

class Ingredient: Identifiable, Equatable, Hashable {
    static func == (lhs: Ingredient, rhs: Ingredient) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let strength: Int
    let origin: Origin?
    let description: String
    
    init(id: UUID = UUID(), name: String, strength: Int, origin: Origin?, description: String) {
        self.id = id
        self.name = name
        self.strength = strength
        self.origin = origin
        self.description = description
    }
}

class Equipment: Identifiable, Hashable {
    static func == (lhs: Equipment, rhs: Equipment) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let description: String
    
    init(id: UUID = UUID(), name: String, description: String) {
        self.id = id
        self.name = name
        self.description = description
    }
}

class Origin: Identifiable, Hashable {
    static func == (lhs: Origin, rhs: Origin) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let flag: String
    
    init(id: UUID = UUID(), name: String, flag: String) {
        self.id = id
        self.name = name
        self.flag = flag
    }
}

class DrinkSource: Identifiable, Hashable {
    static func == (lhs: DrinkSource, rhs: DrinkSource) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let description: String
    let link: URL
    
    init(id: UUID = UUID(), name: String, description: String, link: URL) {
        self.id = id
        self.name = name
        self.description = description
        self.link = link
    }
}
