//
//  Equipments.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

class Equipments {
    static let barspoon: Equipment = Equipment(
        name: "Barspoon",
        description: "A long-handled spoon used in bartending.",
        image: "Barspoon"
    )
    static let cocktailGlass: Equipment = Equipment(
        name: "Cocktail Glas",
        description: "",
        image: "Cocktail Glass"
    )
    static let mixingGlass: Equipment = Equipment(
        name: "Mixing Glas",
        description: "",
        image: "Mixing Glass"
    )
    static let oldFashionedGlass: Equipment = Equipment(
        name: "Old Fashioned Glas",
        description: "",
        image: "Old Fashioned Glas"
    )
    static let shaker: Equipment = Equipment(
        name: "Shaker",
        description: "",
        image: "Shaker"
    )
    static let strainer: Equipment = Equipment(
        name: "Strainer",
        description: "",
        image: "Strainer"
    )
    static let muddler: Equipment = Equipment(
        name: "Muddler",
        description: "",
        image: "Muddler"
    )
    static let highballGlass: Equipment = Equipment(
        name: "Highball Glass",
        description: "",
        image: "Highball Glass"
    )
    
    static let all: [Equipment] = [
        barspoon,
        cocktailGlass,
        mixingGlass,
        oldFashionedGlass,
        shaker,
        strainer,
        muddler,
        highballGlass,
    ]
}
