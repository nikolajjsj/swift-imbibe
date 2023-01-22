//
//  Drinks.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

final class Drinks {
    static let bourbonRenewal: Drink =
        .init(
            name: "Bourbon Renewal",
            description: "",
            image: "Bourbon Renewal",
            color: Colors.brown,
            year: 2004,
            base: .whisky,
            origin: Origins.unitedStates,
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker, Equipments.strainer ],
            ingredients: [
                .init(ingredient: Ingredients.bourbonWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.cremeDeCasis, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredients.angosturaBitters, amount: 2, unit: .dash),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill Shaker with Ice Cubes"),
                .init(string: "Add Bourbon Whisky, Lemon Juice, Creme de Casis, Simple Sirup, & Angostura Bitters"),
                .init(string: "Shake for ~10 seconds"),
                .init(string: "Add Ice Cubes to the Old Fashioned Glass"),
                .init(string: "Strain shaker contents into the Old Fashioned Glass"),
                .init(string: "Garnish with a Lemon Wheel"),
            ]
        )
    
    static let americano: Drink =
        .init(
            name: "Americano",
            description: "",
            image: "Americano",
            color: Colors.red,
            year: 1860,
            base: .other,
            origin: Origins.italy,
            equipments: [ Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.sweetVermouth, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.campari, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.sodaWater),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill up the Old Fashioned Glass with Ice"),
                .init(string: "Pour Campari, & Sweet Vermouth into the Old Fashioned Glass"),
                .init(string: "Stir"),
                .init(string: "Top up with Soda Water"),
                .init(string: "Garnish with Citrus Wedge"),
            ]
        )
    
    static let classicMartini: Drink =
        .init(
            name: "Classic Martini",
            description: "",
            image: "Martini",
            color: Colors.gray,
            year: 1922,
            base: .gin,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 75, unit: .milliliters),
                .init(ingredient: Ingredients.dryVermouth, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.angosturaOrangeBitters, amount: 1, unit: .dash),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Ice Cubes, Gin, Dry Vermouth, & Angostura Orange Bitters to the Mixing Glass"),
                .init(string: "Stir with Barspoon (30-40 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with Olives"),
            ]
        )
    
    static let corpseReviver: Drink =
        .init(
            name: "Corpse Reviver",
            description: "",
            image: "Corpse Reviver",
            color: Colors.orange,
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
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Ice Cubes to the Shaker"),
                .init(string: "Add Gin, Kina l'aero d'or, Curacao, Lemon Juice, & Absinthe"),
                .init(string: "Shake (10-15 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with a Cherry"),
            ]
        )
    
    static let cubaLibre: Drink =
        .init(
            name: "Cuba Libre",
            description: "",
            image: "Cuba Libre",
            color: Colors.brown,
            year: 1900,
            base: .rum,
            origin: Origins.cuba,
            equipments: [ Equipments.highballGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.lightRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.cola, amount: 120, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Ice Cubes to the Highball Glass"),
                .init(string: "Add Light Rum & Lime Juice"),
                .init(string: "Stir with Barspoon"),
                .init(string: "Top up with Cola"),
                .init(string: "Garnish with a Lime Wedge"),
            ]
        )
    
    static let daiquiri: Drink =
        .init(
            name: "Daiquiri",
            description: "",
            image: "Daiquiri",
            color: Colors.red,
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
            ]
        )
    
    static let darkAndStormy: Drink =
        .init(
            name: "Dark and Stormy",
            description: "",
            image: "Dark and Stormy",
            color: Colors.brown,
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
            ]
        )
    
    static let dirtyMartini: Drink =
        .init(
            name: "Dirty Martini",
            description: "",
            image: "Dirty Martini",
            color: Colors.green,
            year: 1901,
            base: .gin,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 75, unit: .milliliters),
                .init(ingredient: Ingredients.dryVermouth, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.olives, amount: 3, unit: .piece),
                .init(ingredient: Ingredients.oliveBrine, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Olives to Mixing Glass & muddle"),
                .init(string: "Add the Olive Brine"),
                .init(string: "Add Ice Cubes, Gin & Dry Vermouth to the Mixing Glass"),
                .init(string: "Stir with Barspoon (30-40 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with Olives"),
            ]
        )
    
    static let elDiablo: Drink =
        .init(
            name: "El Diablo",
            description: "",
            image: "El Diablo",
            color: Colors.red,
            year: 1946,
            base: .tequila,
            origin: Origins.germany,
            equipments: [ Equipments.highballGlass, Equipments.shaker, Equipments.strainer ],
            ingredients: [
                .init(ingredient: Ingredients.tequila, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.cremeDeCasis, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.gingerBeer, amount: 100, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Tequila, Creme de Casis, Lime Juice, & Ice Cubes to the Shaker"),
                .init(string: "Add Ice Cubes in the Highball Glass"),
                .init(string: "Strain contents into the Highball Glass"),
                .init(string: "Top up with Ginger Beer"),
                .init(string: "Garnish with Olives"),
            ]
        )

    
    static let espressoMartini: Drink =
        .init(
            name: "Espresso Martini",
            description: "",
            image: "Espresso Martini",
            color: Colors.brown,
            year: 1980,
            base: .vodka,
            origin: Origins.unitedKingdom,
            equipments: [ Equipments.cocktailGlass, Equipments.shaker, Equipments.strainer ],
            ingredients: [
                .init(ingredient: Ingredients.vodka, amount: 40, unit: .milliliters),
                .init(ingredient: Ingredients.coffeeLiqueur, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 20, unit: .piece),
                .init(ingredient: Ingredients.coffee, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill the shaker with Ice Cubes"),
                .init(string: "Add Vodka, Simple Sirup, Coffee Liqueur, & Coffee"),
                .init(string: "Shake (10-15 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with Coffee Bean"),
            ]
        )
    
    static let fityFiftyMartini: Drink =
        .init(
            name: "50/50 Martini",
            description: "",
            image: "Martini",
            color: Colors.gray,
            year: 1930,
            base: .gin,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.dryVermouth, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Ice Cubes, Gin & Dry Vermouth to the Mixing Glass"),
                .init(string: "Stir with Barspoon (30-40 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with Olives"),
            ]
        )
    
    static let ginFizz: Drink =
        .init(
            name: "Gin Fizz",
            description: "",
            image: "Gin Fizz",
            color: Colors.gray,
            year: 1888,
            base: .gin,
            origin: Origins.unitedKingdom,
            equipments: [ Equipments.highballGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.sodaWater, amount: 80, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill the Shaker with Ice Cubes"),
                .init(string: "Add Gin, Lemon Juice, & Simple Sirup"),
                .init(string: "Shake well (10-15 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Top up with Soda Water"),
                .init(string: "Garnish with a Lemon Slice"),
            ]
        )
    
    static let hotToddy: Drink =
        .init(
            name: "Hot Toddy",
            description: "",
            image: "Hot Toddy",
            color: Colors.orange,
            year: 1800,
            base: .whisky,
            origin: Origins.scotland,
            equipments: [ Equipments.toddyGlass ],
            ingredients: [
                .init(ingredient: Ingredients.whisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.demeraraSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.coffee),
            ],
            steps: [
                .init(string: "Add Whisky & Demerara Sirup into the Toddy Glass"),
                .init(string: "Top up with hot water & stir"),
                .init(string: "Garnish with Lemon Twist"),
            ]
        )
    
    static let irishCoffee: Drink =
        .init(
            name: "Irish Coffee",
            description: "",
            image: "Irish Coffee",
            color: Colors.brown,
            year: 1943,
            base: .whisky,
            origin: Origins.ireland,
            equipments: [ Equipments.toddyGlass ],
            ingredients: [
                .init(ingredient: Ingredients.irishWhisky, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.coffee),
            ],
            steps: [
                .init(string: "Add Irish Whisky & Simple Sirup into the Toddy Glass"),
                .init(string: "Top up with hot Coffee"),
                .init(string: "Garnish with Whipped Cream"),
            ]
        )
    
    static let longIslandIceTea: Drink =
        .init(
            name: "Long Island Ice Tea",
            description: "",
            image: "Long Island Ice Tea",
            color: Colors.orange,
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
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill the Shaker with Ice Cubes"),
                .init(string: "Add Tequila, Vodka, Rum, Curacao, Gin, Lemon Juice, & Simple Sirup"),
                .init(string: "Stir"),
                .init(string: "Top up with Cola"),
                .init(string: "Garnish with a Lemon Slice"),
            ]
        )
    
    static let maitai: Drink =
        .init(
            name: "Mai Tai",
            description: "",
            image: "Mai Tai",
            color: Colors.orange,
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
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill the Old Fashioned Glass with Ice Crushed"),
                .init(string: "In the Shaker add Dark Rum, Light Rum, Curacao, Lime Juice, Orgeat Sirup, & Simple Sirup"),
                .init(string: "Add Ice Cubes"),
                .init(string: "Shake for 5-10 seconds"),
                .init(string: "Strain the contents into the Old Fashioned Glass"),
                .init(string: "Garnish with a Lime Wedge or some Mint Leaves"),
            ]
        )
    
    static let manhattan: Drink =
        .init(
            name: "Manhattan",
            description: "",
            image: "Manhattan",
            color: Colors.red,
            year: 1880,
            base: .whisky,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.mixingGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.ryeWhisky, amount: 50, unit: .milliliters),
                .init(ingredient: Ingredients.sweetVermouth, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.angosturaBitters, amount: 2, unit: .dash),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill up the Mixing Glass with Ice Cubes"),
                .init(string: "Pour Angostura Bitters, Sweet Vermouth, & Rye Whisky into the Mixing Glass"),
                .init(string: "Stir"),
                .init(string: "Strain into the Cocktail Class"),
                .init(string: "Garnish with Cocktail Cherry"),
            ]
        )
    
    static let margarita: Drink =
        .init(
            name: "Margarita",
            description: "",
            image: "Margarita",
            color: Colors.yellow,
            year: 1937,
            base: .tequila,
            origin: Origins.mexico,
            equipments: [ Equipments.cocktailGlass, Equipments.shaker, Equipments.strainer ],
            ingredients: [
                .init(ingredient: Ingredients.tequila, amount: 35, unit: .milliliters),
                .init(ingredient: Ingredients.cointreau, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Ice Cubes to the Shaker"),
                .init(string: "Add Tequila, Cointreau, & Lime Juice"),
                .init(string: "Shake (10-15 seconds)"),
                .init(string: "Add a salt rim to the Cocktail Glass"),
                .init(string: "Strain into the Cocktail Class"),
                .init(string: "Garnish with a Lime Wedge"),
            ]
        )
    
    static let mojito: Drink =
        .init(
            name: "Mojito",
            description: "",
            image: "Mojito",
            color: Colors.green,
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
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Take Mint Leaves, give it a clap to release oils, and put into Highball Glass"),
                .init(string: "Use a Barspoon to shuffle the leaves around in the Highball Glass, make sure not to muddle the leaves to much"),
                .init(string: "In a shaker add Light Rum, Demerara Sirup, & Lime Juice"),
                .init(string: "Add Ice Cubes and do a quick shake (6-8 seconds)"),
                .init(string: "Fill the Highball Glass with Ice Cubes, and strain contents of the shaker into the glass"),
                .init(string: "With Barspoon stir to shuffle the Mint Leaves around"),
                .init(string: "Top op with Soda Water"),
            ]
        )
    
    static let moscowMule: Drink =
        .init(
            name: "Moscow Mule",
            description: "",
            image: "Moscow Mule",
            color: Colors.orange,
            year: 1941,
            base: .vodka,
            origin: Origins.unitedStates,
            equipments: [ Equipments.oldFashionedGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.vodka, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.limeJuice, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.gingerBeer, amount: 120, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill Old Fashioned Glass with Ice Cubes"),
                .init(string: "Add Vodka & Lime Juice and stir with the Barspoon"),
                .init(string: "Then top up with Ginger Beer"),
                .init(string: "Garnish with a Lime Wedge"),
            ]
        )
    
    static let negroni: Drink =
        .init(
            name: "Negroni",
            description: "",
            image: "Negroni",
            color: Colors.red,
            year: 1860,
            base: .gin,
            origin: Origins.italy,
            equipments: [ Equipments.barspoon, Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.sweetVermouth, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.campari, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill up the Old Fashioned Glass with Ice"),
                .init(string: "Pour Campari, Sweet Vermouth, & Gin into the Old Fashioned Glass"),
                .init(string: "Stir"),
                .init(string: "Garnish with Orange Wedge"),
            ]
        )
    
    static let newYourSour: Drink =
        .init(
            name: "New York Sour",
            description: "",
            image: "New York Sour",
            color: Colors.orange,
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
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Put Rye Whisky, Lemon Juice, Simple Sirup, Curacao, & Egg White into the Shaker"),
                .init(string: "Dry shake (without ice for about 10 seconds)"),
                .init(string: "Add Ice Cubes"),
                .init(string: "Shake again (10-15 seconds)"),
                .init(string: "Strain into the Old Fashioned Glas"),
                .init(string: "Add a float of Red Wine"),
            ]
        )
    
    static let oldFashioned: Drink =
        .init(
            name: "Old Fashioned",
            description: "",
            image: "Old Fashioned",
            color: Colors.orange,
            year: 1880,
            base: .whisky,
            origin: Origins.unitedStates,
            equipments: [ Equipments.barspoon, Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.whisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.simpleSirup, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredients.angosturaBitters, amount: 3, unit: .dash),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Put Whisky, Simple Sirup, & Angostura Bitters into the Old Fashioned Glass"),
                .init(string: "Stir with a Barspoon"),
                .init(string: "Add a Large Ice Cube"),
                .init(string: "Garnish with a twist of Orange"),
            ]
        )
    
    static let painkiller: Drink =
        .init(
            name: "Painkiller",
            description: "",
            image: "Painkiller",
            color: Colors.orange,
            year: 1970,
            base: .rum,
            origin: Origins.britishVirginIslands,
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.darkRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.orangeJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.pineappleJuice, amount: 120, unit: .milliliters),
                .init(ingredient: Ingredients.coconutCream, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Ice Cubes to the Shaker"),
                .init(string: "Add Dark Rum, Pineapple Juice, Coconut Cream, Orange Juice"),
                .init(string: "Shake (10-15 seconds)"),
                .init(string: "Pour everything into the Old Fashioned Glass"),
            ]
        )
    
    static let paperPlane: Drink =
        .init(
            name: "Paper Plane",
            description: "",
            image: "Paper Plane",
            color: Colors.orange,
            year: 2008,
            base: .whisky,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.shaker, Equipments.strainer ],
            ingredients: [
                .init(ingredient: Ingredients.bourbonWhisky, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.amaro, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.aperol, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Ice Cubes, Bourbon Whisky, Amaro, Aperol, & Lemon Juice into the Shaker"),
                .init(string: "Shake for 10-15 seconds"),
                .init(string: "Strain into the Cocktail Glass"),
            ]
        )
    
    static let penicillin: Drink =
        .init(
            name: "Penicillin",
            description: "",
            image: "Penicillin",
            color: Colors.yellow,
            year: 2000,
            base: .whisky,
            origin: Origins.unitedStates,
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker, Equipments.strainer, Equipments.muddler ],
            ingredients: [
                .init(ingredient: Ingredients.islayWhisky, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredients.scotchWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.honeySirup, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.ginger, amount: 1, unit: .piece),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Do 3-4 slices of Ginger and drop those into the Shaker"),
                .init(string: "Muddle the Ginger"),
                .init(string: "Add Islay Whisky, Scotch Whisky, Lemon Juice, & Honey Sirup"),
                .init(string: "Add Ice Cubes & shake for 10-15 seconds"),
                .init(string: "Add Ice Cubes to the Old Fashioned Glass"),
                .init(string: "Strain into the Old Fashioned Glass"),
                .init(string: "Garnish with Candied Ginger or a Twist of Lemon"),
            ]
        )
    
    static let perfectMartini: Drink =
        .init(
            name: "Perfect Martini",
            description: "",
            image: "Perfect Martini",
            color: Colors.gray,
            year: 1948,
            base: .gin,
            origin: Origins.unitedStates,
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.dryVermouth, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.sweetVermouth, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Ice Cubes, Gin, Dry Vermouth, & Sweet Vermouth to the Mixing Glass"),
                .init(string: "Stir with Barspoon (30-40 seconds)"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with a Lemon Twist"),
            ]
        )
    
    static let pinaColada: Drink =
        .init(
            name: "Piña Colada",
            description: "",
            image: "Pina Colada",
            color: Colors.brown,
            year: 1920,
            base: .rum,
            origin: Origins.puertoRico,
            equipments: [ Equipments.cocktailGlass, Equipments.barspoon, Equipments.blender ],
            ingredients: [
                .init(ingredient: Ingredients.darkRum, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.coconutCream, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.pineappleJuice, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.pineapple, amount: 3, unit: .piece),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill the Blender with Ice Cubes"),
                .init(string: "Add Coconut Cream, Pineapple Juice, Dark Rum, & the Pineapple slices"),
                .init(string: "Start the blender"),
                .init(string: "Fill the mix into the Cocktail Glass"),
                .init(string: "Garnish with Cherry, Pineapple, and a Cocktail Umbrella"),
            ]
        )
    
    static let rustyNail: Drink =
        .init(
            name: "Rusty Nail",
            description: "",
            image: "Rusty Nail",
            color: Colors.brown,
            year: 1960,
            base: .whisky,
            origin: Origins.unitedStates,
            equipments: [ Equipments.oldFashionedGlass, Equipments.mixingGlass, Equipments.strainer ],
            ingredients: [
                .init(ingredient: Ingredients.scotchWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.drambuie, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.angosturaBitters, amount: 2, unit: .dash),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Scotch Whisky, Drambuie, & Ice Cubes in the Mixing Glass"),
                .init(string: "Stir for 30-45 seconds"),
                .init(string: "Add Ice Cubes in the Old Fashioned Glass"),
                .init(string: "Strain into the Old Fashioned Glass"),
            ]
        )
    
    static let sazerac: Drink =
        .init(
            name: "Sazerac",
            description: "",
            image: "Sazerac",
            color: Colors.brown,
            year: 1950,
            base: .whisky,
            origin: Origins.unitedStates,
            equipments: [ Equipments.mixingGlass, Equipments.barspoon, Equipments.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredients.ryeWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.absinthe, amount: 2, unit: .dash),
                .init(ingredient: Ingredients.simpleSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredients.peychaudBitters, amount: 2, unit: .dash),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Use the Absinthe to rinse the Old Fashioned Flass"),
                .init(string: "In the Mixing Glass add Ice Cubes and Rye Whisky, Simple Sirup, & Peychaud Bitters"),
                .init(string: "Stir with Barspoon"),
                .init(string: "Strain into the Old Fashioned Glass"),
                .init(string: "Garnish with a Lemon Twist"),
            ]
        )
    
    static let sidecar: Drink =
        .init(
            name: "Sidecar",
            description: "",
            image: "Sidecar",
            color: Colors.orange,
            year: 1922,
            base: .cognac,
            origin: Origins.france,
            equipments: [ Equipments.shaker, Equipments.cocktailGlass ],
            ingredients: [
                .init(ingredient: Ingredients.cognac, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredients.curacao, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill Shaker with Ice Cubes"),
                .init(string: "Add Cognac, Curacao,  & Lemon Juice"),
                .init(string: "Shake for 10-15 seconds"),
                .init(string: "Strain into the Cocktail Glass"),
            ]
        )
    
    static let theTradewinds: Drink =
        .init(
            name: "The Tradewinds",
            description: "",
            image: "The Tradewinds",
            color: Colors.yellow,
            year: 1970,
            base: .rum,
            origin: Origins.caribbean,
            equipments: [ Equipments.highballGlass, Equipments.barspoon ],
            ingredients: [
                .init(ingredient: Ingredients.goldRum, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.darkRum, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.apricotLiqueur, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.coconutCream, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "In the Highball Glass add Gold Rum, Dark Rum, Apricot Liqueur, Coconut Cream, & Lemon Juice"),
                .init(string: "Top up with Crushed Ice"),
                .init(string: "Stir contents together"),
                .init(string: "Garnish with Nutmeg & Cocktail Umbrella"),
            ]
        )
    
    static let whiskySour: Drink =
        .init(
            name: "Whisky Sour",
            description: "",
            image: "Whisky Sour",
            color: Colors.orange,
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
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Put Bourbon Whisky, Lemon Juice, Egg White, & Simple Sirup into the Shaker"),
                .init(string: "Dry shake (without ice)"),
                .init(string: "Add Ice Cubes"),
                .init(string: "Shake again"),
                .init(string: "Strain into the Old Fashioned Glas"),
                .init(string: "Garnish with a few drops of Angostura Bitters on top"),
            ]
        )
    
    static let whiteNegroni: Drink =
        .init(
            name: "White Negroni",
            description: "",
            image: "White Negroni",
            color: Colors.gray,
            year: 2002,
            base: .gin,
            origin: Origins.france,
            equipments: [ Equipments.oldFashionedGlass, Equipments.mixingGlass, Equipments.strainer ],
            ingredients: [
                .init(ingredient: Ingredients.gin, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.lilletBlanc, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.suze, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Add Gin, Suze, Lillet Blanc into the Mixing Glass"),
                .init(string: "Add Ice Cubes"),
                .init(string: "Stir for ~20 seconds"),
                .init(string: "Add Ice Cubes to the Old Fashioned Glass"),
                .init(string: "Strain contents into the Old Fashioned Glass"),
                .init(string: "Garnish with Twist of Grapefruit"),
            ]
        )

    
    static let whiteRussian: Drink =
        .init(
            name: "White Russian",
            description: "",
            image: "White Russian",
            color: Colors.brown,
            year: 1949,
            base: .gin,
            origin: Origins.belgium,
            equipments: [ Equipments.oldFashionedGlass, Equipments.shaker ],
            ingredients: [
                .init(ingredient: Ingredients.vodka, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredients.kahlua, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.cream, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredients.ice),
            ],
            steps: [
                .init(string: "Fill the Old Fashioned Glass with Ice Cubes"),
                .init(string: "Add Vodka & Kahlua"),
                .init(string: "Stir together"),
                .init(string: "Then add the Cream"),
            ]
        )
    
    static let all: [Drink] = [
        americano,
        bourbonRenewal,
        classicMartini,
        corpseReviver,
        cubaLibre,
        daiquiri,
        darkAndStormy,
        dirtyMartini,
        elDiablo,
        espressoMartini,
        fityFiftyMartini,
        ginFizz,
        hotToddy,
        irishCoffee,
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
        paperPlane,
        pinaColada,
        penicillin,
        rustyNail,
        sazerac,
        sidecar,
        theTradewinds,
        whiskySour,
        whiteNegroni,
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
    
    // Get all drinks that are available with the gives ingredients
    static func available(selections: [String]) -> [Drink] {
        Drinks.all.filter({ $0.ingredients.allSatisfy({ selections.contains($0.ingredient.name) }) })
    }
    
    // Random drink
    static func random() -> Drink {
        let random = self.all.randomElement()
        return random ?? Drinks.oldFashioned
    }
}
