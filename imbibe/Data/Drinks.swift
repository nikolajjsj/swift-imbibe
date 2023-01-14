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
            image: "Americano",
            color: "A06049DA",
            origin: Origin(name: "Italy", flag: "🇮🇹"),
            equipments: [ Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.sweetVermouth, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.campari, amount: 30, unit: .milliliters),
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
            image: "Daiquiri",
            color: "484A3E5E",
            origin: Origin(name: "Cuba", flag: "🇨🇺"),
            equipments: [ Equipments.cocktailGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.rum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 30, unit: .milliliters),
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
            image: "Dark and Stormy",
            color: "6F5810A6",
            origin: Origin(name: "Bermuda", flag: "🇧🇲"),
            equipments: [ Equipments.highballGlass ],
            ingredients: [
                .init(ingredient: Ingredients.darkRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.gingerBeer, amount: 90, unit: .milliliters),
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
            image: "Gin Fizz",
            color: "777A68A8",
            origin: Origin(name: "United Kingdom", flag: "🇬🇧"),
            equipments: [ Equipments.highballGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.sodaWater, amount: 80, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 10, unit: .milliliters),
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
            image: "Manhattan",
            color: "402E2757",
            origin: Origin(name: "United States", flag: "🇺🇸"),
            equipments: [ Equipments.cocktailGlass, Equipments.mixingGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.ryeWhisky, amount: 50, unit: .milliliters),
                .init(ingredient: Ingredients.sweetVermouth, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.angosturaBitters, amount: 2, unit: .dash),
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
            image: "Martini",
            color: "49484459",
            origin: Origin(name: "United States", flag: "🇺🇸"),
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.dryVermouth, amount: 10, unit: .milliliters),
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
            image: "Mojito",
            color: "50573D97",
            origin: Origin(name: "Cuba", flag: "🇨🇺"),
            equipments: [ Equipments.highballGlass, Equipments.muddler, Equipments.barspoon, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.lightRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.demeraraSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.mintLeaves, amount: 10),
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
            image: "Moscow Mule",
            color: "55472F9C",
            origin: Origin(name: "United States", flag: "🇺🇸"),
            equipments: [ Equipments.highballGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.vodka, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredients.gingerBeer, amount: 120, unit: .milliliters),
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
            image: "Negroni",
            color: "B85432D9",
            origin: Origin(name: "Count Camillo Negroni, Italy", flag: "🇮🇹"),
            equipments: [ Equipments.barspoon, Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.sweetVermouth, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.campari, amount: 30, unit: .milliliters),
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
            image: "Old Fashioned",
            color: "5B3A18D0",
            origin: Origin(name: "United States", flag: "🇺🇸"),
            equipments: [ Equipments.barspoon, Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.whisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredients.angosturaBitters, amount: 3, unit: .dash),
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
            image: "Sazerac",
            color: "563E2CC3",
            origin: Origin(name: "United States", flag: "🇺🇸"),
            equipments: [ Equipments.mixingGlass, Equipments.barspoon, Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.ryeWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.absinthe, amount: 2, unit: .dash),
                .init(ingredient: Ingredients.simpleSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.peychaudBitters, amount: 2, unit: .dash),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Use the Absinthe to rinse the Old Fashioned Flass"),
                .init(string: "In the Mixing Glass add Ice Cubes and Rye Whisky, Simple Sirup, & Peychaud Bitters"),
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
            image: "Sidecar",
            color: "3C341C4F",
            origin: Origin(name: "France", flag: "🇫🇷"),
            equipments: [ Equipments.shaker, Equipments.cocktailGlass ],
            ingredients: [
                .init(ingredient: Ingredients.cognac, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.curacao, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 20, unit: .milliliters),
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
            image: "Whisky Sour",
            color: "A5834BC3",
            origin: Origin(name: "United States", flag: "🇺🇸"),
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.bourbonWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.eggWhite, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.angosturaBitters, amount: 2, unit: .dash),
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
        americano,
        daiquiri,
        darkAndStormy,
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
    
    static func random() -> Drink {
        let random = self.all.randomElement()
        return random ?? Drinks.oldFashioned
    }
}
