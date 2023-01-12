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
            origin: Origin(name: "Italy", flag: "🇮🇹"),
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
            origin: Origin(name: "Cuba", flag: "🇨🇺"),
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
    
    static let darkAndStormy: Drink =
        .init(
            name: "Dark and Stormy",
            description: "",
            origin: Origin(name: "Bermuda", flag: "🇧🇲"),
            equipments: [ Equipments.highballGlass ],
            ingredients: [
                .init(ingredient: Ingredients.darkRum, volumeInML: 60),
                .init(ingredient: Ingredients.gingerBeer, volumeInML: 90),
                .init(ingredient: Ingredients.ice),
                .init(ingredient: Ingredients.lime),
            ],
            steps: [
                .init(string: "Fill up the Highball Glass with Ice Cubes"),
                .init(string: "Add Dark Rum & Ginger Beer"),
                .init(string: "Garnish with a Lime Wedge"),
            ],
            source: nil
        )
    
    static let ginFizz: Drink =
        .init(
            name: "Gin Fizz",
            description: "",
            origin: Origin(name: "United Kingdom", flag: "🇬🇧"),
            equipments: [ Equipments.highballGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.gin, volumeInML: 60),
                .init(ingredient: Ingredients.lemonJuice, volumeInML: 30),
                .init(ingredient: Ingredients.sodaWater, volumeInML: 80),
                .init(ingredient: Ingredients.simpleSirup, volumeInML: 10),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill the Shaker with Ice Cubes"),
                .init(string: "Add Gin, Lemon Juice, & Simple Sirup"),
                .init(string: "Shake well (10-15 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Top up with Soda Water"),
                .init(string: "Garnish with a Lemon Slice"),
            ],
            source: nil
        )
    
    static let manhattan: Drink =
        .init(
            name: "Manhattan",
            description: "",
            origin: Origin(name: "United States", flag: "🇺🇸"),
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
    
    static let martini: Drink =
        .init(
            name: "Martini",
            description: "",
            origin: Origin(name: "United States", flag: "🇺🇸"),
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, volumeInML: 60),
                .init(ingredient: Ingredients.dryVermouth, volumeInML: 10),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Add Ice Cubes to the Mixing Glass"),
                .init(string: "Add Gin & Dry Vermouth"),
                .init(string: "Stir together with Barspoon"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with Olives and a Lemon Twist"),
            ],
            source: nil
        )
    
    static let mojito: Drink =
        .init(
            name: "Mojito",
            description: "",
            origin: Origin(name: "Cuba", flag: "🇨🇺"),
            equipments: [ Equipments.highballGlass, Equipments.muddler, Equipments.barspoon, Equipments.shaker ],
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
    
    static let moscowMule: Drink =
        .init(
            name: "Moscow Mule",
            description: "",
            origin: Origin(name: "United States", flag: "🇺🇸"),
            equipments: [ Equipments.highballGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.vodka, volumeInML: 60),
                .init(ingredient: Ingredients.limeJuice, volumeInML: 10),
                .init(ingredient: Ingredients.gingerBeer, volumeInML: 120),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill Highball Glass with Ice Cubes"),
                .init(string: "Add Vodka, Ginger Beer, & Lime Juice into the Highball Glass"),
                .init(string: "Garnish with Lime Wedge"),
            ],
            source: nil
        )
    
    static let negroni: Drink =
        .init(
            name: "Negroni",
            description: "",
            origin: Origin(name: "Count Camillo Negroni, Italy", flag: "🇮🇹"),
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
            origin: Origin(name: "United States", flag: "🇺🇸"),
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
    
    static let sazerac: Drink =
        .init(
            name: "Sazerac",
            description: "",
            origin: Origin(name: "United States", flag: "🇺🇸"),
            equipments: [ Equipments.mixingGlass, Equipments.barspoon, Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.cognac, volumeInML: 60),
                .init(ingredient: Ingredients.absinthe, volumeInML: 10),
                .init(ingredient: Ingredients.simpleSirup, volumeInML: 15),
                .init(ingredient: Ingredients.peychaudBitters, dashes: 2),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill the Old Fashioned Glass with Ice Cubes"),
                .init(string: "In the Mixing Glass add Cognac, Absinthe, Simple Sirup, & Peychaud Bitters"),
                .init(string: "Stir with Barspoon"),
                .init(string: "Strain into the Old Fashioned Glass"),
                .init(string: "Garnish with a Lemon Twist"),
            ],
            source: nil
        )
    
    static let sidecar: Drink =
        .init(
            name: "Sidecar",
            description: "",
            origin: Origin(name: "France", flag: "🇫🇷"),
            equipments: [ Equipments.shaker, Equipments.cocktailGlass ],
            ingredients: [
                .init(ingredient: Ingredients.cognac, volumeInML: 60),
                .init(ingredient: Ingredients.curacao, volumeInML: 20),
                .init(ingredient: Ingredients.lemonJuice, volumeInML: 20),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill Shaker with Ice Cubes"),
                .init(string: "Add Cognac, Curacao,  & Lemon Juice"),
                .init(string: "Shake for 10-15 seconds"),
                .init(string: "Strain into the Cocktail Glass"),
            ],
            source: nil
        )
    
    static let whiskySour: Drink =
        .init(
            name: "Whisky Sour",
            description: "",
            origin: Origin(name: "United States", flag: "🇺🇸"),
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
        darkAndStormy,
        ginFizz,
        manhattan,
        martini,
        mojito,
        moscowMule,
        negroni,
        oldFashioned,
        sazerac,
        sidecar,
        whiskySour,
    ]
    
    static let allIconic: [Drink] = [
        daiquiri,
        negroni,
        oldFashioned,
        mojito,
        whiskySour,
    ]
    
    static func random() -> Drink {
        let random = self.all.randomElement()
        return random ?? Drinks.oldFashioned
    }
}
