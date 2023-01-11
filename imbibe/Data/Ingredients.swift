//
//  Ingridients.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

let ingredients = [
    "Angostura Bitters": Ingredient(id: UUID(), name: "Angostura Bitters", strength: 44, origin: origins["Trinidad and Tobago"]!, description: ""),
    "Campari": Ingredient(id: UUID(), name: "Campari", strength: 25, origin: origins["Italy"]!, description: ""),
    "Gin": Ingredient(id: UUID(), name: "Gin", strength: 40, origin: origins["Worldwide"]!, description: ""),
    "Rye Whisky": Ingredient(id: UUID(), name: "Rye Whisky", strength: 40, origin: origins["United States"]!, description: ""),
    "Bourbon Whisky": Ingredient(id: UUID(), name: "Bourbon Whisky", strength: 40, origin: origins["United States"]!, description: ""),
    "Whisky": Ingredient(id: UUID(), name: "Whisky", strength: 40, origin: origins["Worldwide"]!, description: ""),
    "Rum": Ingredient(id: UUID(), name: "Rum", strength: 40, origin: nil, description: ""),
    "Sweet Vermouth": Ingredient(id: UUID(), name: "Sweet Vermouth", strength: 18, origin: origins["Italy"]!, description: ""),
    
    "Lime Juice": Ingredient(id: UUID(), name: "Lime Juice", strength: 0, origin: nil, description: ""),
    "Lemon Juice": Ingredient(id: UUID(), name: "Lemon Juice", strength: 0, origin: nil, description: ""),
    "Simple Sirup": Ingredient(id: UUID(), name: "Simple Sirup", strength: 0, origin: nil, description: ""),
    
    "Egg White": Ingredient(id: UUID(), name: "Egg White", strength: 0, origin: nil, description: ""),
    
    "Soda Water": Ingredient(id: UUID(), name: "Soda Water", strength: 0, origin: nil, description: ""),
    
    "Ice Cubes": Ingredient(id: UUID(), name: "Ice Cubes", strength: 0, origin: nil, description: ""),
    "Ice": Ingredient(id: UUID(), name: "Ice", strength: 0, origin: nil, description: ""),
]
