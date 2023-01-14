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
    let color: String
    let strength: Int
    let origin: Origin?
    let description: String
    
    init(id: UUID = UUID(), name: String, color: String, strength: Int, origin: Origin?, description: String) {
        self.id = id
        self.name = name
        self.color = color
        self.strength = strength
        self.origin = origin
        self.description = description
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
    let pieces: Int?
    let volumeInML: Int?
    let dashes: Int?
    
    init(id: UUID = UUID(), ingredient: Ingredient, pieces: Int? = nil, volumeInML: Int? = nil, dashes: Int? = nil) {
        self.id = id
        self.ingredient = ingredient
        self.pieces = pieces
        self.volumeInML = volumeInML
        self.dashes = dashes
    }
}
