//
//  Drinks.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

class Drinks {
    static let fityFiftyMartini: Drink =
        .init(
            name: "50/50 Martini",
            description: "",
            image: "Martini",
            color: "49484459",
            year: 1930,
            base: .gin,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.dryVermouth, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Add Ice Cubes, Gin & Dry Vermouth to the Mixing Glass"),
                .init(string: "Stir with Barspoon (30-40 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with Olives"),
            ],
            source: nil
        )
    
    static let americano: Drink =
        .init(
            name: "Americano",
            description: "",
            image: "Americano",
            color: "A06049DA",
            year: 1860,
            base: .other,
            origin: Origins.italy,
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
    
    static let classicMartini: Drink =
        .init(
            name: "Classic Martini",
            description: "",
            image: "Martini",
            color: "49484459",
            year: 1922,
            base: .gin,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 75, unit: .milliliters),
                .init(ingredient: Ingredients.dryVermouth, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.angosturaOrangeBitters, amount: 1, unit: .dash),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Add Ice Cubes, Gin, Dry Vermouth, & Angostura Orange Bitters to the Mixing Glass"),
                .init(string: "Stir with Barspoon (30-40 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with Olives"),
            ],
            source: nil
        )
    
    static let corpseReviver: Drink =
        .init(
            name: "Corpse Reviver",
            description: "",
            image: "Corpse Reviver",
            color: "A5834BC3",
            year: 1861,
            base: .gin,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.mixingGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 22, unit: .milliliters),
                .init(ingredient: Ingredients.kinaLaeroDor, amount: 22, unit: .milliliters),
                .init(ingredient: Ingredients.curacao, amount: 22, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 22, unit: .milliliters),
                .init(ingredient: Ingredients.absinthe, amount: 1, unit: .dash),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Add Ice Cubes to the Shaker"),
                .init(string: "Add Gin, Kina l'aero d'or, Curacao, Lemon Juice, & Absinthe"),
                .init(string: "Shake (10-15 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with a Cherry"),
            ],
            source: nil
        )
    
    static let cubaLibre: Drink =
        .init(
            name: "Cuba Libre",
            description: "",
            image: "Cuba Libre",
            color: "5B3A18D0",
            year: 1900,
            base: .rum,
            origin: Origins.cuba,
            equipments: [ Equipments.highballGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.lightRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.cola, amount: 120, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Add Ice Cubes to the Highball Glass"),
                .init(string: "Add Light Rum & Lime Juice"),
                .init(string: "Stir with Barspoon"),
                .init(string: "Top up with Cola"),
                .init(string: "Garnish with a Lime Wedge"),
            ],
            source: nil
        )
    
    static let daiquiri: Drink =
        .init(
            name: "Daiquiri",
            description: "",
            image: "Daiquiri",
            color: "484A3E5E",
            year: 1900,
            base: .rum,
            origin: Origins.cuba,
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
            year: 1920,
            base: .rum,
            origin: Origins.bermuda,
            equipments: [ Equipments.highballGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.darkRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.gingerBeer, amount: 90, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill up the Highball Glass with Ice Cubes"),
                .init(string: "Add Dark Rum & Lime Juice and stir with Barspoon"),
                .init(string: "Top up with Ginger Beer"),
                .init(string: "Garnish with a Lime Wedge"),
            ],
            source: nil
        )
    
    static let dirtyMartini: Drink =
        .init(
            name: "Dirty Martini",
            description: "",
            image: "Dirty Martini",
            color: "49484459",
            year: 1901,
            base: .gin,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 75, unit: .milliliters),
                .init(ingredient: Ingredients.dryVermouth, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.olives, amount: 3, unit: .piece),
                .init(ingredient: Ingredients.oliveBrine, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Add Olives to Mixing Glass & muddle"),
                .init(string: "Add the Olive Brine"),
                .init(string: "Add Ice Cubes, Gin & Dry Vermouth to the Mixing Glass"),
                .init(string: "Stir with Barspoon (30-40 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with Olives"),
            ],
            source: nil
        )
    
    static let espressoMartini: Drink =
        .init(
            name: "Espresso Martini",
            description: "",
            image: "Espresso Martini",
            color: "49484459",
            year: 1980,
            base: .vodka,
            origin: Origins.unitedKingdom,
            equipments: [ Equipments.cocktailGlass, Equipments.shaker, Equipments.strainer ],
            ingredients: [
                .init(ingredient: Ingredients.vodka, amount: 40, unit: .milliliters),
                .init(ingredient: Ingredients.coffeeLiqueur, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 20, unit: .piece),
                .init(ingredient: Ingredients.coffee, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill the shaker with Ice Cubes"),
                .init(string: "Add Vodka, Simple Sirup, Coffee Liqueur, & Coffee"),
                .init(string: "Shake (10-15 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with Coffee Bean"),
            ],
            source: nil
        )
    
    static let ginFizz: Drink =
        .init(
            name: "Gin Fizz",
            description: "",
            image: "Gin Fizz",
            color: "777A68A8",
            year: 1888,
            base: .gin,
            origin: Origins.unitedKingdom,
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
    
    static let longIslandIceTea: Drink =
        .init(
            name: "Long Island Ice Tea",
            description: "",
            image: "Long Island Ice Tea",
            color: "6F5810A6",
            year: 1972,
            base: .other,
            origin: Origins.unitedStates,
            equipments: [ Equipments.highballGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.tequila, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.vodka, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.rum, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.curacao, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.gin, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.cola, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill the Shaker with Ice Cubes"),
                .init(string: "Add Tequila, Vodka, Rum, Curacao, Gin, Lemon Juice, & Simple Sirup"),
                .init(string: "Stir"),
                .init(string: "Top up with Cola"),
                .init(string: "Garnish with a Lemon Slice"),
            ],
            source: nil
        )
    
    static let maitai: Drink =
        .init(
            name: "Mai Tai",
            description: "",
            image: "Mai Tai",
            color: "484A3E5E",
            year: 1944,
            base: .rum,
            origin: Origins.unitedStates,
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker, Equipments.strainer ],
            ingredients: [
                .init(ingredient: Ingredients.darkRum, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.lightRum, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.curacao, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.orgeatSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredients.iceCrushed),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill the Old Fashioned Glass with Ice Crushed"),
                .init(string: "In the Shaker add Dark Rum, Light Rum, Curacao, Lime Juice, Orgeat Sirup, & Simple Sirup"),
                .init(string: "Add Ice Cubes"),
                .init(string: "Shake for 5-10 seconds"),
                .init(string: "Strain the contents into the Old Fashioned Glass"),
                .init(string: "Garnish with a Lime Wedge or some Mint Leaves"),
            ],
            source: nil
        )
    
    static let manhattan: Drink =
        .init(
            name: "Manhattan",
            description: "",
            image: "Manhattan",
            color: "A06049DA",
            year: 1880,
            base: .whisky,
            origin: Origins.unitedStates,
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
    
    static let margarita: Drink =
        .init(
            name: "Margarita",
            description: "",
            image: "Margarita",
            color: "484A3E5E",
            year: 1937,
            base: .tequila,
            origin: Origins.mexico,
            equipments: [ Equipments.cocktailGlass, Equipments.shaker, Equipments.strainer ],
            ingredients: [
                .init(ingredient: Ingredients.tequila, amount: 35, unit: .milliliters),
                .init(ingredient: Ingredients.cointreau, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Add Ice Cubes to the Shaker"),
                .init(string: "Add Tequila, Cointreau, & Lime Juice"),
                .init(string: "Shake (10-15 seconds)"),
                .init(string: "Add a salt rim to the Cocktail Glass"),
                .init(string: "Strain into the Cocktail Class"),
                .init(string: "Garnish with a Lime Wedge"),
            ],
            source: nil
        )
    
    static let mojito: Drink =
        .init(
            name: "Mojito",
            description: "",
            image: "Mojito",
            color: "50573D97",
            year: 1927,
            base: .rum,
            origin: Origins.cuba,
            equipments: [ Equipments.highballGlass, Equipments.muddler, Equipments.barspoon, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.lightRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.demeraraSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.sodaWater, amount: 80, unit: .milliliters),
                .init(ingredient: Ingredients.mintLeaves, amount: 10, unit: .piece),
                .init(ingredient: Ingredients.iceCubes),
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
            year: 1941,
            base: .vodka,
            origin: Origins.unitedStates,
            equipments: [ Equipments.oldFashionedGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.vodka, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.gingerBeer, amount: 120, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill Old Fashioned Glass with Ice Cubes"),
                .init(string: "Add Vodka & Lime Juice and stir with the Barspoon"),
                .init(string: "Then top up with Ginger Beer"),
                .init(string: "Garnish with a Lime Wedge"),
            ],
            source: nil
        )
    
    static let negroni: Drink =
        .init(
            name: "Negroni",
            description: "",
            image: "Negroni",
            color: "B85432D9",
            year: 1860,
            base: .gin,
            origin: Origins.italy,
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
    
    static let newYourSour: Drink =
        .init(
            name: "New York Sour",
            description: "",
            image: "New York Sour",
            color: "A5834BC3",
            year: 1880,
            base: .whisky,
            origin: Origins.unitedStates,
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.ryeWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.curacao, amount: 8, unit: .milliliters),
                .init(ingredient: Ingredients.eggWhite, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.redWine, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Put Rye Whisky, Lemon Juice, Simple Sirup, Curacao, & Egg White into the Shaker"),
                .init(string: "Dry shake (without ice for about 10 seconds)"),
                .init(string: "Add Ice Cubes"),
                .init(string: "Shake again (10-15 seconds)"),
                .init(string: "Strain into the Old Fashioned Glas"),
                .init(string: "Add a float of Red Wine"),
            ],
            source: nil
        )
    
    static let oldFashioned: Drink =
        .init(
            name: "Old Fashioned",
            description: "",
            image: "Old Fashioned",
            color: "5B3A18D0",
            year: 1880,
            base: .whisky,
            origin: Origins.unitedStates,
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
    
    static let painkiller: Drink =
        .init(
            name: "Painkiller",
            description: "",
            image: "Painkiller",
            color: "49484459",
            year: 1970,
            base: .rum,
            origin: Origins.britishVirginIslands,
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.darkRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.orangeJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.pineappleJuice, amount: 120, unit: .milliliters),
                .init(ingredient: Ingredients.coconutCream, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Add Ice Cubes to the Shaker"),
                .init(string: "Add Dark Rum, Pineapple Juice, Coconut Cream, Orange Juice"),
                .init(string: "Shake (10-15 seconds)"),
                .init(string: "Pour everything into the Old Fashioned Glass"),
            ],
            source: nil
        )
    
    static let perfectMartini: Drink =
        .init(
            name: "Perfect Martini",
            description: "",
            image: "Perfect Martini",
            color: "49484459",
            year: 1948,
            base: .gin,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.dryVermouth, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.sweetVermouth, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Add Ice Cubes, Gin, Dry Vermouth, & Sweet Vermouth to the Mixing Glass"),
                .init(string: "Stir with Barspoon (30-40 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with a Lemon Twist"),
            ],
            source: nil
        )
    
    static let pinaColada: Drink =
        .init(
            name: "Piña Colada",
            description: "",
            image: "Pina Colada",
            color: "5B3A18D0",
            year: 1920,
            base: .rum,
            origin: Origins.puertoRico,
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.blender ],
            ingredients: [
                .init(ingredient: Ingredients.darkRum, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.coconutCream, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.pineappleJuice, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.pineapple, amount: 3, unit: .piece),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill the Blender with Ice Cubes"),
                .init(string: "Add Coconut Cream, Pineapple Juice, Dark Rum, & the Pineapple slices"),
                .init(string: "Start the blender"),
                .init(string: "Fill the mix into the Cocktail Glass"),
                .init(string: "Garnish with Cherry, Pineapple, and a Cocktail Umbrella"),
            ],
            source: nil
        )
    
    static let sazerac: Drink =
        .init(
            name: "Sazerac",
            description: "",
            image: "Sazerac",
            color: "563E2CC3",
            year: 1950,
            base: .whisky,
            origin: Origins.unitedStates,
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
            color: "A5834BC3",
            year: 1922,
            base: .cognac,
            origin: Origins.france,
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
            year: 1870,
            base: .whisky,
            origin: Origins.unitedStates,
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.bourbonWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.eggWhite, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 15, unit: .milliliters),
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
    
    static let whiteRussian: Drink =
        .init(
            name: "White Russian",
            description: "",
            image: "White Russian",
            color: "55472F9C",
            year: 1949,
            base: .gin,
            origin: Origins.belgium,
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.vodka, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.kahlua, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.cream, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.iceCubes),
            ],
            steps: [
                .init(string: "Fill the Old Fashioned Glass with Ice Cubes"),
                .init(string: "Add Vodka & Kahlua"),
                .init(string: "Stir together"),
                .init(string: "Then add the Cream"),
            ],
            source: nil
        )
    
    static let all: [Drink] = [
        americano,
        classicMartini,
        corpseReviver,
        cubaLibre,
        daiquiri,
        darkAndStormy,
        dirtyMartini,
        espressoMartini,
        fityFiftyMartini,
        ginFizz,
        longIslandIceTea,
        maitai,
        manhattan,
        margarita,
        mojito,
        moscowMule,
        negroni,
        newYourSour,
        oldFashioned,
        perfectMartini,
        painkiller,
        pinaColada,
        sazerac,
        sidecar,
        whiskySour,
        whiteRussian,
    ]
    
    static let allIconic: [Drink] = [
        americano,
        classicMartini,
        daiquiri,
        darkAndStormy,
        manhattan,
        mojito,
        moscowMule,
        negroni,
        oldFashioned,
        pinaColada,
        sazerac,
        sidecar,
        whiskySour,
        whiteRussian,
    ]
    
    // Base spirit
    static var ginBased: [Drink] {
        all.filter({ $0.base == .gin })
    }
    static var whiskyBased: [Drink] {
        all.filter({ $0.base == .whisky })
    }
    static var rumBased: [Drink] {
        all.filter({ $0.base == .rum })
    }
    static var cognacBased: [Drink] {
        all.filter({ $0.base == .cognac })
    }
    static var tequilaBased: [Drink] {
        all.filter({ $0.base == .tequila })
    }
    static var vodkaBased: [Drink] {
        all.filter({ $0.base == .vodka })
    }
    
    // Country
    static var countries: Dictionary<Origin, [Drink]> {
        Dictionary(grouping: all, by: { $0.origin})
    }
    
    // Random drink
    static func random() -> Drink {
        let random = self.all.randomElement()
        return random ?? Drinks.oldFashioned
    }
}
