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
    static let blender: Equipment = Equipment(
        name: "Blender",
        description: "A kitchen appliance used to blend stuff together.",
        image: "Blender"
    )
    static let cocktailGlass: Equipment = Equipment(
        name: "Cocktail Glas",
        description: """
A stemmed glass, with an iverted cone bowl, used to serve straight-up cocktails (referring to drink that are shaken with ice, but served with no ice).
Sometimes a cocktail glass is also referred to as a martini glass.
""",
        image: "Cocktail Glass"
    )
    static let mixingGlass: Equipment = Equipment(
        name: "Mixing Glas",
        description: "A glass container that is used for stirred drinks with ice added, to quickly cool the contents.",
        image: "Mixing Glass"
    )
    static let oldFashionedGlass: Equipment = Equipment(
        name: "Old Fashioned Glas",
        description: "Also known as the rocks glass, lowball glass, or simply just lowball, is as short type of glass used to serve spirits.",
        image: "Old Fashioned Glas"
    )
    static let shaker: Equipment = Equipment(
        name: "Shaker",
        description: "A container used to mix beverages by shaking. There are a variety of shakers: Boston Shaker, Cobbler Shaker, and the Parisian Shaker.",
        image: "Shaker"
    )
    static let strainer: Equipment = Equipment(
        name: "Strainer",
        description: "Used to strain the content from either a Shaker or a Mixing Glass, into a glass for serving.",
        image: "Strainer"
    )
    static let muddler: Equipment = Equipment(
        name: "Muddler",
        description: "Used to mash up contents, usually fruits or other items that has to be muddled to release flavours or aromas.",
        image: "Muddler"
    )
    static let highballGlass: Equipment = Equipment(
        name: "Highball Glass",
        description: "A tall and thin glass, taller than a Old Fashioned/lowball glass.",
        image: "Highball Glass"
    )
    
    static let all: [Equipment] = [
        barspoon,
        blender,
        cocktailGlass,
        mixingGlass,
        oldFashionedGlass,
        shaker,
        strainer,
        muddler,
        highballGlass,
    ]
}
