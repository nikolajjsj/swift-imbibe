//
//  Drinks.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

class Drinks {
    static let americano: Drink =
        .init(
            name: "Americano",
            description: "",
            equipments: [ Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.sweetVermouth, volumeInML: 30),
                .init(ingredient: Ingredients.campari, volumeInML: 30),
                .init(ingredient: Ingredients.sodaWater),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill up the Old Fashioned Glass with Ice"),
                .init(string: "Pour Campari, & Sweet Vermouth into the Old Fashioned Glass"),
                .init(string: "Stir"),
                .init(string: "Top up with Soda Water"),
                .init(string: "Garnish with Citrus Wedge"),
            ],
            source: nil
        )
    
    static let daiquiri: Drink =
        .init(
            name: "Daiquiri",
            description: "",
            equipments: [ Equipments.cocktailGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.rum, volumeInML: 60),
                .init(ingredient: Ingredients.limeJuice, volumeInML: 30),
                .init(ingredient: Ingredients.simpleSirup, volumeInML: 30),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Put Ice, Rum, Lime Juice, & Simple Sirup into the shaker"),
                .init(string: "Shake for 10-15 seconds"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with Lime Wheel"),
            ],
            source: nil
        )
    
    static let manhattan: Drink =
        .init(
            name: "Manhattan",
            description: "",
            equipments: [ Equipments.cocktailGlass, Equipments.mixingGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.ryeWhisky, volumeInML: 50 ),
                .init(ingredient: Ingredients.sweetVermouth, volumeInML: 20),
                .init(ingredient: Ingredients.angosturaBitters, dashes: 2),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill up the Mixing Glass with Ice Cubes"),
                .init(string: "Pour Angostura Bitters, Sweet Vermouth, & Rye Whisky into the Mixing Glass"),
                .init(string: "Stir"),
                .init(string: "Strain into the Cocktail Class"),
                .init(string: "Garnish with Cocktail Cherry"),
            ],
            source: nil
        )
    
    static let mojito: Drink =
        .init(
            name: "Mojito",
            description: "",
            equipments: [ Equipments.highballGlass, Equipments.muddler, Equipments.shaker, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.lightRum, volumeInML: 60),
                .init(ingredient: Ingredients.demeraraSirup, volumeInML: 15),
                .init(ingredient: Ingredients.limeJuice, volumeInML: 25),
                .init(ingredient: Ingredients.mintLeaves, pieces: 10),
                .init(ingredient: Ingredients.iceCubes),
                .init(ingredient: Ingredients.sodaWater),
            ],
            steps: [
                .init(string: "Take Mint Leaves, give it a clap to release oils, and put into Highball Glass"),
                .init(string: "Use a Barspoon to shuffle the leaves around in the Highball Glass, make sure not to muddle the leaves to much"),
                .init(string: "In a shaker add Light Rum, Demerara Sirup, & Lime Juice"),
                .init(string: "Add Ice Cubes and do a quick shake (6-8 seconds)"),
                .init(string: "Fill the Highball Glass with Ice Cubes, and strain contents of the shaker into the glass"),
                .init(string: "With Barspoon stir to shuffle the Mint Leaves around"),
                .init(string: "Top op with Soda Water"),
            ],
            source: nil
        )
    
    static let negroni: Drink =
        .init(
            name: "Negroni",
            description: "",
            equipments: [ Equipments.barspoon, Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, volumeInML: 60),
                .init(ingredient: Ingredients.sweetVermouth, volumeInML: 30),
                .init(ingredient: Ingredients.campari, volumeInML: 30),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill up the Old Fashioned Glass with Ice"),
                .init(string: "Pour Campari, Sweet Vermouth, & Gin into the Old Fashioned Glass"),
                .init(string: "Stir"),
                .init(string: "Garnish with Orange Wedge"),
            ],
            source: nil
        )
    
    static let oldFashioned: Drink =
        .init(
            name: "Old Fashioned",
            description: "",
            equipments: [ Equipments.barspoon, Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.whisky, volumeInML: 60),
                .init(ingredient: Ingredients.simpleSirup, volumeInML: 10),
                .init(ingredient: Ingredients.angosturaBitters, dashes: 3),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Put Whisky, Simple Sirup, & Angostura Bitters into the Old Fashioned Glass"),
                .init(string: "Stir with a Barspoon"),
                .init(string: "Add a Large Ice Cube"),
                .init(string: "Garnish with a twist of Orange"),
            ],
            source: nil
        )
    
    static let whiskySour: Drink =
        .init(
            name: "Whisky Sour",
            description: "",
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.bourbonWhisky, volumeInML: 60),
                .init(ingredient: Ingredients.lemonJuice, volumeInML: 30),
                .init(ingredient: Ingredients.eggWhite, volumeInML: 30),
                .init(ingredient: Ingredients.simpleSirup, volumeInML: 30),
                .init(ingredient: Ingredients.angosturaBitters, dashes: 2),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Put Bourbon Whisky, Lemon Juice, Egg White, & Simple Sirup into the Shaker"),
                .init(string: "Dry shake (without ice)"),
                .init(string: "Add Ice Cubes"),
                .init(string: "Shake again"),
                .init(string: "Strain into the Old Fashioned Glas"),
                .init(string: "Garnish with a few drops of Angostura Bitters on top"),
            ],
            source: nil
        )
    
    static let all: [Drink] = [
        americano,
        daiquiri,
        manhattan,
        negroni,
        oldFashioned,
        whiskySour,
        mojito,
    ]
    
    static let allIconic: [Drink] = [
        daiquiri,
        negroni,
        oldFashioned,
        whiskySour,
        mojito,
    ]
    
    static func random() -> Drink {
        let random = self.all.randomElement()
        return random ?? Drinks.oldFashioned
    }
}
