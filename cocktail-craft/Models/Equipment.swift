//
//  Equipment.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import Foundation

final class Equipment: Identifiable, Hashable {
    static func == (lhs: Equipment, rhs: Equipment) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let description: String
    let image: String
    
    init(id: UUID = UUID(), name: String, description: String, image: String) {
        self.id = id
        self.name = name
        self.description = description
        self.image = image
    }
}

final class Equipments {
    static let instance = Equipments()
    private init() { }
    
    let barspoon: Equipment = Equipment(
        name: "Barspoon",
        description: "A long-handled spoon used in bartending.",
        image: "Barspoon"
    )
    let blender: Equipment = Equipment(
        name: "Blender",
        description: "A kitchen appliance used to blend stuff together.",
        image: "Blender"
    )
    let champagneGlass: Equipment = Equipment(
        name: "Champagne Glass",
        description: "As stemmed glass, usually used to serve up Champagne",
        image: "Champagne Glass"
    )
    let cocktailGlass: Equipment = Equipment(
        name: "Cocktail Glass",
        description: """
A stemmed glass, with an iverted cone bowl, used to serve straight-up cocktails (referring to drink that are shaken with ice, but served with no ice).
Sometimes a cocktail glass is also referred to as a martini glass.
""",
        image: "Cocktail Glass"
    )
    let mixingGlass: Equipment = Equipment(
        name: "Mixing Glass",
        description: "A glass container that is used for stirred drinks with ice added, to quickly cool the contents.",
        image: "Mixing Glass"
    )
    let oldFashionedGlass: Equipment = Equipment(
        name: "Old Fashioned Glass",
        description: "Also known as the rocks glass, lowball glass, or simply just lowball, is as short type of glass used to serve spirits.",
        image: "Old Fashioned Glass"
    )
    let shaker: Equipment = Equipment(
        name: "Shaker",
        description: "A container used to mix beverages by shaking. There are a variety of shakers: Boston Shaker, Cobbler Shaker, and the Parisian Shaker.",
        image: "Shaker"
    )
    let strainer: Equipment = Equipment(
        name: "Strainer",
        description: "Used to strain the content from either a Shaker or a Mixing Glass, into a glass for serving.",
        image: "Strainer"
    )
    let tikiGlass: Equipment = Equipment(
        name: "Tiki Glass",
        description: "Used to serve Tiki style cocktails",
        image: "Tiki Glass"
    )
    let toddyGlass: Equipment = Equipment(
        name: "Toddy Glass",
        description: "Used to serve hot drinks, eg. Hot Toddy and Irish Coffee",
        image: "Toddy Glass"
    )
    let muddler: Equipment = Equipment(
        name: "Muddler",
        description: "Used to mash up contents, usually fruits or other items that has to be muddled to release flavours or aromas.",
        image: "Muddler"
    )
    let highballGlass: Equipment = Equipment(
        name: "Highball Glass",
        description: "A tall and thin glass, taller than a Old Fashioned/lowball glass.",
        image: "Highball Glass"
    )
}
