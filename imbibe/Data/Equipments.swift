//
//  Equipments.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

class Equipments {
    static let barspoon: Equipment = Equipment(name: "Barspoon", description: "A long-handled spoon used in bartending.")
    static let cocktailGlass: Equipment = Equipment(name: "Cocktail Glas", description: "")
    static let mixingGlass: Equipment = Equipment(name: "Mixing Glas", description: "")
    static let oldFashionedGlass: Equipment = Equipment(name: "Old Fashioned Glas", description: "")
    static let shaker: Equipment = Equipment(name: "Shaker", description: "")
    static let muddler: Equipment = Equipment(name: "Muddler", description: "")
    static let highballGlass: Equipment = Equipment(name: "Highball Glass", description: "")
    
    static let all: [Equipment] = [
        barspoon,
        cocktailGlass,
        mixingGlass,
        oldFashionedGlass,
        shaker,
        muddler,
        highballGlass,
    ]
}
