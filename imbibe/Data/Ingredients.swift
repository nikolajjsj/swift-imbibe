//
//  Ingridients.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

let ingredients = [
    "Absinthe": Ingredient(id: UUID(), name: "Absinthe", strength: 70, origin: nil, description: ""),
    "Amaretto": Ingredient(id: UUID(), name: "Amaretto", strength: 28, origin: nil, description: ""),
    "Angostura Bitters": Ingredient(id: UUID(), name: "Angostura Bitters", strength: 44, origin: origins["Trinidad and Tobago"]!, description: ""),
    "Angostura Orange Bitters": Ingredient(id: UUID(), name: "Angostura Orange Bitters", strength: 28, origin: nil, description: ""),
    "Aperol": Ingredient(id: UUID(), name: "Aperol", strength: 11, origin: nil, description: ""),
    "Bourbon Whisky": Ingredient(id: UUID(), name: "Bourbon Whisky", strength: 40, origin: origins["United States"]!, description: ""),
    "Campari": Ingredient(id: UUID(), name: "Campari", strength: 25, origin: origins["Italy"]!, description: ""),
    "Calvados": Ingredient(id: UUID(), name: "Calvados", strength: 40, origin: nil, description: ""),
    "Champagne": Ingredient(id: UUID(), name: "Champagne", strength: 12, origin: nil, description: ""),
    "Coffee": Ingredient(id: UUID(), name: "Coffee", strength: 0, origin: nil, description: ""),
    "Cognac": Ingredient(id: UUID(), name: "Cognac", strength: 40, origin: nil, description: ""),
    "Cointreau": Ingredient(id: UUID(), name: "Cointreau", strength: 40, origin: nil, description: ""),
    "Egg White": Ingredient(id: UUID(), name: "Egg White", strength: 0, origin: nil, description: ""),
    "Gin": Ingredient(id: UUID(), name: "Gin", strength: 40, origin: origins["Worldwide"]!, description: ""),
    "Ice": Ingredient(id: UUID(), name: "Ice", strength: 0, origin: nil, description: ""),
    "Ice Crushed": Ingredient(id: UUID(), name: "Ice Crushed", strength: 0, origin: nil, description: ""),
    "Ice Cubes": Ingredient(id: UUID(), name: "Ice Cubes", strength: 0, origin: nil, description: ""),
    "Lime Juice": Ingredient(id: UUID(), name: "Lime Juice", strength: 0, origin: nil, description: ""),
    "Lemon Juice": Ingredient(id: UUID(), name: "Lemon Juice", strength: 0, origin: nil, description: ""),
    "Peychaud Bitters": Ingredient(id: UUID(), name: "Peychaud Bitters", strength: 35, origin: nil, description: ""),
    "Rum": Ingredient(id: UUID(), name: "Rum", strength: 40, origin: nil, description: ""),
    "Rye Whisky": Ingredient(id: UUID(), name: "Rye Whisky", strength: 40, origin: origins["United States"]!, description: ""),
    "Simple Sirup": Ingredient(id: UUID(), name: "Simple Sirup", strength: 0, origin: nil, description: ""),
    "Soda Water": Ingredient(id: UUID(), name: "Soda Water", strength: 0, origin: nil, description: ""),
    "Sweet Vermouth": Ingredient(id: UUID(), name: "Sweet Vermouth", strength: 18, origin: origins["Italy"]!, description: ""),
    "Vodka": Ingredient(id: UUID(), name: "Vodka", strength: 40, origin: origins["Poland"]!, description: ""),
    "Whisky": Ingredient(id: UUID(), name: "Whisky", strength: 40, origin: origins["Worldwide"]!, description: ""),
]
