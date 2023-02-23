//
//  DrinksData.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 15/02/2023.
//

import Foundation

let _12MileLimit: Drink =
    .init(
        name: "12 Mile Limit",
        description: "",
        image: "12 Mile Limit",
        color: Colors.yellow,
        year: 1898,
        base: .rum,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.lightRum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.brandy, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grenadine, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Into the Shaker add Light Rum, Rye Whisky, Brandy, Lemon Juice, & Grenadine"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the Old Fashioned Glass"),
            .init(string: "Garnish with a Lemon Twist"),
        ]
    )

let alexander: Drink =
    .init(
        name: "Alexander",
        description: "",
        image: "Alexander",
        color: Colors.white,
        year: 1917,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cremeDeCacao, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cream, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "in a shaker add cognac, creme de cacao, & cream"),
            .init(string: "add ice and shake for 10-15 seconds"),
            .init(string: "strain into a cocktail glass"),
            .init(string: "garnish with freshly ground nutmeg"),
        ]
    )

let americano: Drink =
    .init(
        name: "Americano",
        description: "",
        image: "Americano",
        color: Colors.red,
        year: 1860,
        origin: Origins.instance.italy,
        equipments: [ Equipments.instance.oldFashionedGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.campari, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sodaWater),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill up the Old Fashioned Glass with Ice"),
            .init(string: "Pour Campari, & Sweet Vermouth into the Old Fashioned Glass"),
            .init(string: "Stir"),
            .init(string: "Top up with Soda Water"),
            .init(string: "Garnish with Citrus Wedge"),
        ]
    )

let angelFace: Drink =
    .init(
        name: "Angel Face",
        description: "",
        image: "Angel Face",
        color: Colors.yellow,
        year: 1930,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.brandy, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.calvados, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Gin, Brandy, & Calvados"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let aviation: Drink =
    .init(
        name: "Aviation",
        description: "",
        image: "Aviation",
        color: Colors.blue,
        year: 1916,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cremeDeViolette, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.maraschinoLiqueur, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Mixing Glass add Gin, Creme de Violette, Maraschino Liqueur, & Lemon Juice"),
            .init(string: "Add Ice and stir for 30-45 seconds"),
            .init(string: "Add a Cocktail Cherry in the bottom of the Cocktail Glass"),
            .init(string: "Strain into the Cocktail Glass"),
        ]
    )

let barracuda: Drink =
    .init(
        name: "Barracuda",
        description: "",
        image: "Barracuda",
        color: Colors.yellow,
        year: 1965,
        base: .rum,
        category: .sour,
        origin: Origins.instance.italy,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.goldRum, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.galliano, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.prosecco, amount: 90, unit: .milliliters),
            .init(ingredient: Ingredients.instance.pineappleJuice, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 1, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Gold Rum, Galliano, Pineapple Juice, & Lime Juice"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Highball Glass"),
            .init(string: "Top up with the Prosecco"),
            .init(string: "Garnish with Pineapple & Cocktail Cherry (maybe some Mint)"),
        ]
    )

let beesKnees: Drink =
    .init(
        name: "Bee's Knees",
        description: "",
        image: "Bee's Knees",
        color: Colors.orange,
        year: 1920,
        base: .gin,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orangeJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.honeySyrup, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Gin, Lemon Juice, Orange Juice, & Honey Syrup"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
            .init(string: "Garnish with a Orange- or Lemon Twist"),
        ]
    )

let betweenTheSheets: Drink =
    .init(
        name: "Between the Sheets",
        description: "",
        image: "Between the Sheets",
        color: Colors.yellow,
        year: 1920,
        category: .sour,
        origin: Origins.instance.france,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.lightRum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cognac, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.curacao, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Rum, Cognac, Curacao, & Lemon Juice"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let blackRussian: Drink =
    .init(
        name: "Black Russian",
        description: "",
        image: "Black Russian",
        color: Colors.black,
        year: 1949,
        base: .vodka,
        origin: Origins.instance.belgium,
        equipments: [ Equipments.instance.oldFashionedGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.vodka, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.coffeeLiqueur, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Old Fashioned Glass add Vodka & Coffee Liqueur"),
            .init(string: "Add Ice and stir gently"),
        ]
    )

let boulevardier: Drink =
    .init(
        name: "Boulevardier",
        description: "",
        image: "Boulevardier",
        color: Colors.red,
        year: 1920,
        base: .whisky,
        origin: Origins.instance.france,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.campari, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Mixing Glass add Rye Whisky, Campari, & Sweet Vermouth"),
            .init(string: "Add Ice and stir for 30-45 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
            .init(string: "Garnish with Orange/Lemon Twist"),
        ]
    )

let bourbonRenewal: Drink =
    .init(
        name: "Bourbon Renewal",
        description: "",
        image: "Bourbon Renewal",
        color: Colors.brown,
        year: 2004,
        base: .whisky,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.bourbonWhisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cremeDeCasis, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill Shaker with Ice Cubes"),
            .init(string: "Add Bourbon Whisky, Lemon Juice, Creme de Casis, Simple Syrup, & Angostura Bitters"),
            .init(string: "Shake for ~10 seconds"),
            .init(string: "Add Ice Cubes to the Old Fashioned Glass"),
            .init(string: "Strain shaker contents into the Old Fashioned Glass"),
            .init(string: "Garnish with a Lemon Wheel"),
        ]
    )

let brandyCrusta: Drink =
    .init(
        name: "Brandy Crusta",
        description: "",
        image: "Brandy Crusta",
        color: Colors.orange,
        year: 1852,
        base: .brandy,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.champagneGlass, Equipments.instance.mixingGlass, Equipments.instance.strainer, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.brandy, amount: 50, unit: .milliliters),
            .init(ingredient: Ingredients.instance.maraschinoLiqueur, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.curacao, amount: 5, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 5, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "To the Mixing Glass add Brandy, Maraschino Liqueur, Curacao, Lemon Juice, Simple Syrup, & Angostura Bitters"),
            .init(string: "Fill with Ice"),
            .init(string: "Stir for 30-45 seconds"),
            .init(string: "Strain into a Champagne Glass"),
            .init(string: "Garnish with a Orange Twist (you can also add a sugar rim on the glass)"),
        ]
    )

let brooklyn: Drink =
    .init(
        name: "Brooklyn",
        description: "",
        image: "Brooklyn",
        color: Colors.orange,
        year: 1908,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.mixingGlass, Equipments.instance.strainer, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.dryVermouth, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.maraschinoLiqueur, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.amaro, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaOrangeBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "To the Mixing Glass add Rye Whisky, Dry Vermouth, Maraschino Liqueur, Amaro, & Angostura Orange Bitters"),
            .init(string: "Fill with Ice"),
            .init(string: "Stir for 30-45 seconds"),
            .init(string: "Garnish with a Cocktail Cherry, in the bottom of the Cocktail Glass"),
            .init(string: "Strain into the Cocktail Glass"),
        ]
    )

let canchanchara: Drink =
    .init(
        name: "Canchanchara",
        description: "",
        image: "Canchanchara",
        color: Colors.gray,
        year: 1868,
        base: .rum,
        category: .sour,
        origin: Origins.instance.cuba,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.rum, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.honeySyrup, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.water, amount: 50, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Old Fashioned Glass add Honey Syrup & Lime Juice"),
            .init(string: "Spread the mixture around the glass"),
            .init(string: "Add Crushed Ice and the Rum"),
            .init(string: "Stir for ~20 seconds"),
            .init(string: "Garnish with a Lime Wedge"),
        ]
    )

let casino: Drink =
    .init(
        name: "Casino",
        description: "",
        image: "Casino",
        color: Colors.white,
        year: 1917,
        base: .gin,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.oldTomGin, amount: 40, unit: .milliliters),
            .init(ingredient: Ingredients.instance.maraschinoLiqueur, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaOrangeBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Old Tom Gin, Maraschino Liqueur, Lemon Juice, & Angostura Orange Bitters"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Old Fashioned Glass"),
            .init(string: "Garnish with a Lemon Twist & Cocktail Cherry"),
        ]
    )

let champagneCocktail: Drink =
    .init(
        name: "Champagne Cocktail",
        description: "",
        image: "Champagne Cocktail",
        color: Colors.yellow,
        year: 1862,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.champagneGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.champagne, amount: 90, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cognac, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.grandMarnier, amount: 3, unit: .drop),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Cocktail Glass add Cognac, Simple Syrup, & Angostura Bitters"),
            .init(string: "Top up with Champagne"),
            .init(string: "Add a few drops of Grand Marnier"),
            .init(string: "Garnish with Lemon Twist and/or Cocktail Cherry"),
        ]
    )

let classicMartini: Drink =
    .init(
        name: "Classic Martini",
        description: "",
        image: "Martini",
        color: Colors.gray,
        year: 1922,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.barspoon, Equipments.instance.mixingGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 75, unit: .milliliters),
            .init(ingredient: Ingredients.instance.dryVermouth, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaOrangeBitters, amount: 1, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Ice Cubes, Gin, Dry Vermouth, & Angostura Orange Bitters to the Mixing Glass"),
            .init(string: "Stir with Barspoon (30-40 seconds)"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with Olives"),
        ]
    )

let corpseReviver: Drink =
    .init(
        name: "Corpse Reviver",
        description: "",
        image: "Corpse Reviver",
        color: Colors.orange,
        year: 1861,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 22, unit: .milliliters),
            .init(ingredient: Ingredients.instance.kinaLaeroDor, amount: 22, unit: .milliliters),
            .init(ingredient: Ingredients.instance.curacao, amount: 22, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 22, unit: .milliliters),
            .init(ingredient: Ingredients.instance.absinthe, amount: 1, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Ice Cubes to the Shaker"),
            .init(string: "Add Gin, Kina l'aero d'or, Curacao, Lemon Juice, & Absinthe"),
            .init(string: "Shake (10-15 seconds)"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Cherry"),
        ]
    )

let corpseReviver2: Drink =
    .init(
        name: "Corpse Reviver #2",
        description: "",
        image: "Corpse Reviver #2",
        color: Colors.white,
        year: 1950,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 22, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cointreau, amount: 22, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lilletBlanc, amount: 22, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 22, unit: .milliliters),
            .init(ingredient: Ingredients.instance.absinthe, amount: 1, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Gin, Cointreau, Lillet Blanc, Lemon Juice, & Absinthe"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Orange Twist"),
        ]
    )

let cosmopolitan: Drink =
    .init(
        name: "Cosmopolitan",
        description: "",
        image: "Cosmopolitan",
        color: Colors.red,
        year: 1975,
        base: .vodka,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.vodka, amount: 40, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cointreau, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cranberryJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Vodka, Cointreau, Lime Juice, & Cranberry Juice"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
            .init(string: "Garnish with a Lemon Twist"),
        ]
    )

let cubaLibre: Drink =
    .init(
        name: "Cuba Libre",
        description: "",
        image: "Cuba Libre",
        color: Colors.brown,
        year: 1900,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.cuba,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.lightRum, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cola, amount: 120, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Ice Cubes to the Highball Glass"),
            .init(string: "Add Light Rum & Lime Juice"),
            .init(string: "Stir with Barspoon"),
            .init(string: "Top up with Cola"),
            .init(string: "Garnish with a Lime Wedge"),
        ]
    )

let daiquiri: Drink =
    .init(
        name: "Daiquiri",
        description: "",
        image: "Daiquiri",
        color: Colors.red,
        year: 1900,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.cuba,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker ],
        ingredients: [
            .init(ingredient: Ingredients.instance.rum, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Put Ice, Rum, Lime Juice, & Simple Syrup into the shaker"),
            .init(string: "Shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with Lime Wheel"),
        ]
    )

let darkAndStormy: Drink =
    .init(
        name: "Dark and Stormy",
        description: "",
        image: "Dark and Stormy",
        color: Colors.brown,
        year: 1920,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.bermuda,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.darkRum, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.gingerBeer, amount: 90, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill up the Highball Glass with Ice Cubes"),
            .init(string: "Add Dark Rum & Lime Juice and stir with Barspoon"),
            .init(string: "Top up with Ginger Beer"),
            .init(string: "Garnish with a Lime Wedge"),
        ]
    )

let deshler: Drink =
    .init(
        name: "Deshler",
        description: "",
        image: "Deshler",
        color: Colors.red,
        year: 1917,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.dubbonetRouge, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.peychaudBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.cointreau, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.lemon, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.orange, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Take a swath of Lemon peel, and express the oils into the Shaker, and drop it in"),
            .init(string: "Then take 2 swaths of Orange peel, and do the same"),
            .init(string: "Add the Rye Whisky, Dubonnet Rouge, Peychaud Bitters, & Cointreau"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Orange Twist"),
        ]
    )

let dirtyMartini: Drink =
    .init(
        name: "Dirty Martini",
        description: "",
        image: "Dirty Martini",
        color: Colors.green,
        year: 1901,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.barspoon, Equipments.instance.mixingGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 75, unit: .milliliters),
            .init(ingredient: Ingredients.instance.dryVermouth, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.olives, amount: 3, unit: .piece),
            .init(ingredient: Ingredients.instance.oliveBrine, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
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

let elDiablo: Drink =
    .init(
        name: "El Diablo",
        description: "",
        image: "El Diablo",
        color: Colors.red,
        year: 1946,
        base: .tequila,
        origin: Origins.instance.germany,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.tequila, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cremeDeCasis, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.gingerBeer, amount: 100, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Tequila, Creme de Casis, Lime Juice, & Ice Cubes to the Shaker"),
            .init(string: "Add Ice Cubes in the Highball Glass"),
            .init(string: "Strain contents into the Highball Glass"),
            .init(string: "Top up with Ginger Beer"),
            .init(string: "Garnish with Olives"),
        ]
    )


let espressoMartini: Drink =
    .init(
        name: "Espresso Martini",
        description: "",
        image: "Espresso Martini",
        color: Colors.brown,
        year: 1980,
        base: .vodka,
        origin: Origins.instance.unitedKingdom,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.vodka, amount: 40, unit: .milliliters),
            .init(ingredient: Ingredients.instance.coffeeLiqueur, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.coffee, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill the shaker with Ice Cubes"),
            .init(string: "Add Vodka, Simple Syrup, Coffee Liqueur, & Coffee"),
            .init(string: "Shake (10-15 seconds)"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with Coffee Bean"),
        ]
    )

let fernandito: Drink =
    .init(
        name: "Fernandito",
        description: "",
        image: "Fernandito",
        color: Colors.black,
        year: 1980,
        origin: Origins.instance.italy,
        equipments: [ Equipments.instance.oldFashionedGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.fernetBranca, amount: 50, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cola, amount: 100, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Old Fashioned Glass add Fernet Branca"),
            .init(string: "Add Ice and stir for ~10 seconds"),
            .init(string: "Top up with Cola & gently stir"),
        ]
    )

let fityFiftyMartini: Drink =
    .init(
        name: "50/50 Martini",
        description: "",
        image: "Martini",
        color: Colors.gray,
        year: 1930,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.barspoon, Equipments.instance.mixingGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.dryVermouth, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Ice Cubes, Gin & Dry Vermouth to the Mixing Glass"),
            .init(string: "Stir with Barspoon (30-40 seconds)"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with Olives"),
        ]
    )

let fogCutter: Drink =
    .init(
        name: "Fog Cutter",
        description: "",
        image: "Fog Cutter",
        color: Colors.yellow,
        year: 1947,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.lightRum, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cognac, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.gin, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orgeatSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orangeJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sherry, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill the Old Fashioned Glass with Crushed Ice"),
            .init(string: "In the Shaker add Light Rum, Cognac, Gin, Orgeat Syrup, Orange Juice, & Lemon Juice"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the old Fashioned Glass"),
            .init(string: "Add a float of Sherry"),
            .init(string: "Garnish with some Mint"),
        ]
    )

let ford: Drink =
    .init(
        name: "Ford",
        description: "",
        image: "Ford",
        color: Colors.gray,
        year: 1895,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.oldTomGin, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.dryVermouth, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.benedictine, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaOrangeBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Mixing Glass add Old Tom Gin, Dry Vermouth, Benedictine, & Angostura Orange Bitters"),
            .init(string: "Add Ice and stir for 30-45 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Orange Twist"),
        ]
    )

let french75: Drink =
    .init(
        name: "French 75",
        description: "",
        image: "French 75",
        color: Colors.yellow,
        year: 1915,
        base: .gin,
        origin: Origins.instance.france,
        equipments: [ Equipments.instance.champagneGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.champagne, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Gin, Lemon Juice, & Simple Syrup"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Champagne Glass"),
            .init(string: "Top up with Champagne & stir gently"),
        ]
    )

let frenchConnection: Drink =
    .init(
        name: "French Connection",
        description: "",
        image: "French Connection",
        color: Colors.orange,
        year: 1977,
        base: .brandy,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.cognac, amount: 35, unit: .milliliters),
            .init(ingredient: Ingredients.instance.amaretto, amount: 35, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Ice to a Old Fashioned Glass"),
            .init(string: "Add Cognac & Amaretto"),
            .init(string: "Stir gently"),
        ]
    )

let frenchMartini: Drink =
    .init(
        name: "French Martini",
        description: "",
        image: "French Martini",
        color: Colors.red,
        year: 1980,
        base: .vodka,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.vodka, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.raspberryLiqueur, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.pineappleJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Vodka, Raspberry Liqueur, & Pineapple Juice"),
            .init(string: "Add Ice and stir for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Lemon Twist"),
        ]
    )

let ginFizz: Drink =
    .init(
        name: "Gin Fizz",
        description: "",
        image: "Gin Fizz",
        color: Colors.gray,
        year: 1888,
        base: .gin,
        origin: Origins.instance.unitedKingdom,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.shaker ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sodaWater, amount: 80, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill the Shaker with Ice Cubes"),
            .init(string: "Add Gin, Lemon Juice, & Simple Syrup"),
            .init(string: "Shake well (10-15 seconds)"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Top up with Soda Water"),
            .init(string: "Garnish with a Lemon Slice"),
        ]
    )

let goldenDream: Drink =
    .init(
        name: "Golden Dream",
        description: "",
        image: "Golden Dream",
        color: Colors.yellow,
        year: 1970,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.galliano, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.curacao, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orangeJuice, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cream, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Galliano, Curacao, Orange Juice, & Cream"),
            .init(string: "Add Ice and shake for 5-10 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let grasshopper: Drink =
    .init(
        name: "Grasshopper",
        description: "",
        image: "Grasshopper",
        color: Colors.green,
        year: 1918,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.cremeDeCacao, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cremeDeMenthe, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cream, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Creme De Cacao, Creme De Menthe, & Cream"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let hankyPanky: Drink =
    .init(
        name: "Hanky Panky",
        description: "",
        image: "Hanky Panky",
        color: Colors.red,
        year: 1925,
        base: .gin,
        origin: Origins.instance.unitedKingdom,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.fernetBranca, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Mixing Glass add Gin, Sweet Vermouth, & Fernet Branca"),
            .init(string: "Add Ice and stir for 30-45 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
            .init(string: "Garnish with Orange Zest"),
        ]
    )

let hemmingwaySpecial: Drink =
    .init(
        name: "Hemmingway Special",
        description: "",
        image: "Hemmingway Special",
        color: Colors.black,
        year: 1930,
        base: .rum,
        origin: Origins.instance.cuba,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.rum, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grapefruitJuice, amount: 40, unit: .milliliters),
            .init(ingredient: Ingredients.instance.maraschinoLiqueur, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Rum, Grapefruit Juice, Maraschino Liqueur, & Lime Juice"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let horsesNeck: Drink =
    .init(
        name: "Horse's Neck",
        description: "",
        image: "Horse's Neck",
        color: Colors.yellow,
        year: 1895,
        base: .brandy,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.highballGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.cognac, amount: 40, unit: .milliliters),
            .init(ingredient: Ingredients.instance.gingerBeer, amount: 120, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Ice to a Highball Glass"),
            .init(string: "Add Cognac, Ginger Beer, & Angostura Bitters"),
            .init(string: "Garnish with Lemon Spiral"),
        ]
    )

let hotToddy: Drink =
    .init(
        name: "Hot Toddy",
        description: "",
        image: "Hot Toddy",
        color: Colors.orange,
        year: 1800,
        base: .whisky,
        origin: Origins.instance.scotland,
        equipments: [ Equipments.instance.toddyGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.whisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.demeraraSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.coffee),
        ],
        steps: [
            .init(string: "Add Whisky & Demerara Syrup into the Toddy Glass"),
            .init(string: "Top up with hot water & stir"),
            .init(string: "Garnish with Lemon Twist"),
        ]
    )

let illegal: Drink =
    .init(
        name: "Illegal",
        description: "",
        image: "Illegal",
        color: Colors.yellow,
        year: nil,
        base: nil,
        category: .sour,
        origin: Origins.instance.worldwide,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.mezcal, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.jamaicanRum, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.falernum, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.maraschinoLiqueur, amount: 5, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.eggWhite, amount: 3, unit: .drop),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Mezcal, Jamaican Rum, Falernum, Maraschino Liqueur, Lime Juice, Simple Syrup, & Egg White"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let irishCoffee: Drink =
    .init(
        name: "Irish Coffee",
        description: "",
        image: "Irish Coffee",
        color: Colors.brown,
        year: 1943,
        base: .whisky,
        origin: Origins.instance.ireland,
        equipments: [ Equipments.instance.toddyGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.irishWhisky, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.coffee),
        ],
        steps: [
            .init(string: "Add irish whisky & simple syrup into the toddy glass"),
            .init(string: "Top up with hot coffee"),
            .init(string: "Garnish with whipped cream"),
        ]
    )

let jetPilot: Drink =
    .init(
        name: "Jet Pilot",
        description: "",
        image: "Jet Pilot",
        color: Colors.blue,
        year: 1958,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.tikiGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.jamaicanRum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.puertoRicanRum, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.demerara151Rum, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.absinthe, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grapefruitJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cinnamonSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.falernum, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 1, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill the Tiki Glass with Crushed Ice"),
            .init(string: "In the Shaker add Jamaican Rum, Puerto Rican Rum, Demerara 151 Rum, Absinthe, Grapefruit Juice, Lime Juice, Cinnamon Syrup, Falernum, & Angostura Bitters"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the Tiki Glass"),
            .init(string: "Garnish with Cocktail Cherry"),
        ]
    )

let johnCollins: Drink =
    .init(
        name: "John Collins",
        description: "",
        image: "John Collins",
        color: Colors.white,
        year: 1865,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.highballGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sodaWater, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Ice to a Highball Glass"),
            .init(string: "Add Gin, Lemon Juice, & Simple Syrup"),
            .init(string: "Top up with Soda Water & stir gently"),
            .init(string: "Garnish with a Lemon Slice"),
        ]
    )

let lemonDropMartini: Drink =
    .init(
        name: "Lemon Drop Martini",
        description: "",
        image: "Lemon Drop Martini",
        color: Colors.white,
        year: 1969,
        base: .vodka,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.vodka, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.curacao, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Vodka, Curacao, & Lemon Juice"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Add a Sugar rim to a Cocktail Glass"),
            .init(string: "Strain into the Cocktail Glass"),
        ]
    )

let longIslandIceTea: Drink =
    .init(
        name: "Long Island Ice Tea",
        description: "",
        image: "Long Island Ice Tea",
        color: Colors.orange,
        year: 1972,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.tequila, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.vodka, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.rum, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.curacao, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.gin, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cola, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill the Shaker with Ice Cubes"),
            .init(string: "Add Tequila, Vodka, Rum, Curacao, Gin, Lemon Juice, & Simple Syrup"),
            .init(string: "Stir"),
            .init(string: "Top up with Cola"),
            .init(string: "Garnish with a Lemon Slice"),
        ]
    )

let maitai: Drink =
    .init(
        name: "Mai Tai",
        description: "",
        image: "Mai Tai",
        color: Colors.orange,
        year: 1944,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.darkRum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lightRum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.curacao, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orgeatSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill the Old Fashioned Glass with Ice Crushed"),
            .init(string: "In the Shaker add Dark Rum, Light Rum, Curacao, Lime Juice, Orgeat Syrup, & Simple Syrup"),
            .init(string: "Add Ice Cubes"),
            .init(string: "Shake for 5-10 seconds"),
            .init(string: "Strain the contents into the Old Fashioned Glass"),
            .init(string: "Garnish with a Lime Wedge or some Mint Leaves"),
        ]
    )

let manhattan: Drink =
    .init(
        name: "Manhattan",
        description: "",
        image: "Manhattan",
        color: Colors.red,
        year: 1880,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 50, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill up the Mixing Glass with Ice Cubes"),
            .init(string: "Pour Angostura Bitters, Sweet Vermouth, & Rye Whisky into the Mixing Glass"),
            .init(string: "Stir"),
            .init(string: "Strain into the Cocktail Class"),
            .init(string: "Garnish with Cocktail Cherry"),
        ]
    )

let margarita: Drink =
    .init(
        name: "Margarita",
        description: "",
        image: "Margarita",
        color: Colors.yellow,
        year: 1937,
        base: .tequila,
        origin: Origins.instance.mexico,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.tequila, amount: 35, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cointreau, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
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

let martinez: Drink =
    .init(
        name: "Martinez",
        description: "",
        image: "Martinez",
        color: Colors.red,
        year: 1870,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.maraschinoLiqueur, amount: 5, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaOrangeBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Mixing Glass add Gin, Sweet Vermouth, Maraschino Liqueur, & Angostura Orange Bitters"),
            .init(string: "Add Ice and stir for 30-45 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let maryPickford: Drink =
    .init(
        name: "Mary Pickford",
        description: "",
        image: "Mary Pickford",
        color: Colors.orange,
        year: 1922,
        base: .rum,
        origin: Origins.instance.cuba,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.lightRum, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.pineappleJuice, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.maraschinoLiqueur, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grenadine, amount: 5, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Light Rum, Pineapple Juice, Maraschino Liqueur, & grenadine"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let mimosa: Drink =
    .init(
        name: "Mimosa",
        description: "",
        image: "Mimosa",
        color: Colors.yellow,
        year: 1925,
        origin: Origins.instance.france,
        equipments: [ Equipments.instance.champagneGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.prosecco, amount: 75, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orangeJuice, amount: 75, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Champagne Glass add Prosecco & Orange Juice"),
            .init(string: "Stir gently"),
            .init(string: "Garnish with a Orange Twist"),
        ]
    )

let mintJulep: Drink =
    .init(
        name: "Mint Julep",
        description: "",
        image: "Mint Julep",
        color: Colors.green,
        year: 1810,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.muddler ],
        ingredients: [
            .init(ingredient: Ingredients.instance.bourbonWhisky, amount: 35, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.mintLeaves, amount: 15, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Old Fashioned Glass add Simple Syrup & Mint Leaves"),
            .init(string: "Muddle gently"),
            .init(string: "Fill up with Crushed Ice"),
            .init(string: "Add Bourbon Whisky"),
            .init(string: "Garnish with Mint"),
        ]
    )

let modernDeshler: Drink =
    .init(
        name: "Modern Deshler",
        description: "",
        image: "Modern Deshler",
        color: Colors.red,
        year: 2000,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.dubbonetRouge, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cointreau, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.peychaudBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.lemon, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.orange, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Take a swath of Lemon peel & Orange Peel, and express the oils into the Mixing Glass, and drop it in"),
            .init(string: "Add the Rye Whisky, Dubonnet Rouge, Peychaud Bitters, & Cointreau"),
            .init(string: "Add Ice and stir for 30 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Orange Twist"),
        ]
    )

let modernDeshlerTwisted: Drink =
    .init(
        name: "Modern Deshler Twisted",
        description: "",
        image: "Modern Deshler Twisted",
        color: Colors.red,
        year: 2000,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.bourbonWhisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.curacao, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.peychaudBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.lemon, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.orange, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Take a swath of Lemon peel & Orange Peel, and express the oils into the Mixing Glass, and drop it in"),
            .init(string: "Add the Bourbon Whisky, Sweet Vermouth, Curacao, & Peychaud Bitters"),
            .init(string: "Add Ice and stir for 30 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Orange Twist"),
        ]
    )

let mojito: Drink =
    .init(
        name: "Mojito",
        description: "",
        image: "Mojito",
        color: Colors.green,
        year: 1927,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.cuba,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.muddler, Equipments.instance.barspoon, Equipments.instance.shaker ],
        ingredients: [
            .init(ingredient: Ingredients.instance.lightRum, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.demeraraSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sodaWater, amount: 80, unit: .milliliters),
            .init(ingredient: Ingredients.instance.mintLeaves, amount: 10, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Take Mint Leaves, give it a clap to release oils, and put into Highball Glass"),
            .init(string: "Use a Barspoon to shuffle the leaves around in the Highball Glass, make sure not to muddle the leaves to much"),
            .init(string: "In a shaker add Light Rum, Demerara Syrup, & Lime Juice"),
            .init(string: "Add Ice Cubes and do a quick shake (6-8 seconds)"),
            .init(string: "Fill the Highball Glass with Ice Cubes, and strain contents of the shaker into the glass"),
            .init(string: "With Barspoon stir to shuffle the Mint Leaves around"),
            .init(string: "Top op with Soda Water"),
        ]
    )

let monkeyGland: Drink =
    .init(
        name: "Monkey Gland",
        description: "",
        image: "Monkey Gland",
        color: Colors.orange,
        year: 1925,
        base: .gin,
        category: .sour,
        origin: Origins.instance.france,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orangeJuice, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.absinthe, amount: 5, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grenadine, amount: 5, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Gin, Orange Juice, Absinthe, & Grenadine"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let moscowMule: Drink =
    .init(
        name: "Moscow Mule",
        description: "",
        image: "Moscow Mule",
        color: Colors.orange,
        year: 1941,
        base: .vodka,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.vodka, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.gingerBeer, amount: 120, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill Old Fashioned Glass with Ice Cubes"),
            .init(string: "Add Vodka & Lime Juice and stir with the Barspoon"),
            .init(string: "Then top up with Ginger Beer"),
            .init(string: "Garnish with a Lime Wedge"),
        ]
    )

let nakedAndFamous: Drink =
    .init(
        name: "Naked and Famous",
        description: "",
        image: "Naked and Famous",
        color: Colors.orange,
        year: 2011,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.mezcal, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.chartreuse, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.aperol, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Mezcal, Chartreuse, Aperol, & Lime Juice"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let navyGrog: Drink =
    .init(
        name: "Navy Grog",
        description: "",
        image: "Navy Grog",
        color: Colors.blue,
        year: 1950,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.jamaicanRum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.demerara151Rum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.puertoRicanRum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grapefruitJuice, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.demeraraSyrup, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill the Old Fashioned Glass with Crushed Ice"),
            .init(string: "In the Shaker add Jamaican Rum, Demerara 151 Rum, Puerto Rican Rum, Lime Juice, Grapefruit Juice, & Demerara Syrup"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the old Fashioned Glass"),
            .init(string: "Garnish with some Mint"),
        ]
    )

let negroni: Drink =
    .init(
        name: "Negroni",
        description: "",
        image: "Negroni",
        color: Colors.red,
        year: 1860,
        base: .gin,
        origin: Origins.instance.italy,
        equipments: [ Equipments.instance.barspoon, Equipments.instance.oldFashionedGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.campari, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill up the Old Fashioned Glass with Ice"),
            .init(string: "Pour Campari, Sweet Vermouth, & Gin into the Old Fashioned Glass"),
            .init(string: "Stir"),
            .init(string: "Garnish with Orange Wedge"),
        ]
    )

let newYourSour: Drink =
    .init(
        name: "New York Sour",
        description: "",
        image: "New York Sour",
        color: Colors.orange,
        year: 1880,
        base: .whisky,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker ],
        ingredients: [
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.curacao, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.redWine, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Put Rye Whisky, Lemon Juice, Simple Syrup, & Curacao into the Shaker"),
            .init(string: "Add Ice Cubes"),
            .init(string: "Shake for 10-15 seconds"),
            .init(string: "Strain into the Old Fashioned Glas"),
            .init(string: "Add a float of Red Wine"),
        ]
    )

let oaxacaOldFashioned: Drink =
    .init(
        name: "Oaxaca Old Fashioned",
        description: "",
        image: "Oaxaca Old Fashioned",
        color: Colors.orange,
        year: 2007,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.tequila, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.mezcal, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.agaveNectar, amount: 5, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "To the Mixing Glass add Tequila, Mezcal, Agava Nectar, & Angostura bitters"),
            .init(string: "Add Ice and stir for 30-45 seconds"),
            .init(string: "Add Ice to the Old Fashioned Glass"),
            .init(string: "Strain into the Old Fashioned Glass"),
            .init(string: "Garnish with Orange Twist"),
        ]
    )

let oldCuban: Drink =
    .init(
        name: "Old Cuban",
        description: "",
        image: "Old Cuban",
        color: Colors.yellow,
        year: 2001,
        base: .rum,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.rum, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.prosecco, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.mintLeaves, amount: 8, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Rum, Lime Juice, Simple Syrup, Angostura Bitters, & Mint Leaves"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
            .init(string: "Garnish with Mint"),
        ]
    )

let oldFashioned: Drink =
    .init(
        name: "Old Fashioned",
        description: "",
        image: "Old Fashioned",
        color: Colors.orange,
        year: 1833,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.barspoon, Equipments.instance.oldFashionedGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.whisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 3, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Put Whisky, Simple Syrup, & Angostura Bitters into the Old Fashioned Glass"),
            .init(string: "Stir with a Barspoon"),
            .init(string: "Add a Large Ice Cube"),
            .init(string: "Garnish with a twist of Orange"),
        ]
    )

let painkiller: Drink =
    .init(
        name: "Painkiller",
        description: "",
        image: "Painkiller",
        color: Colors.orange,
        year: 1970,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.britishVirginIslands,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker ],
        ingredients: [
            .init(ingredient: Ingredients.instance.darkRum, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orangeJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.pineappleJuice, amount: 120, unit: .milliliters),
            .init(ingredient: Ingredients.instance.coconutCream, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Ice Cubes to the Shaker"),
            .init(string: "Add Dark Rum, Pineapple Juice, Coconut Cream, Orange Juice"),
            .init(string: "Shake (10-15 seconds)"),
            .init(string: "Pour everything into the Old Fashioned Glass"),
        ]
    )

let paradise: Drink =
    .init(
        name: "Paradise",
        description: "",
        image: "Paradise",
        color: Colors.orange,
        year: 1930,
        base: .gin,
        origin: Origins.instance.unitedKingdom,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.brandy, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orangeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Gin, Brandy, & Orange Juice"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
        ]
    )

let paloma: Drink =
    .init(
        name: "Paloma",
        description: "",
        image: "Paloma",
        color: Colors.white,
        year: 1950,
        base: .tequila,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.tequila, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 5, unit: .milliliters),
            .init(ingredient: Ingredients.instance.pinkGrapefruitSoda, amount: 100, unit: .milliliters),
            .init(ingredient: Ingredients.instance.salt),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Highball Glass add Tequila, Lime Juice, and a pinch of Salt"),
            .init(string: "Add Ice"),
            .init(string: "Top up with Pink Grapefruit Soda"),
            .init(string: "Stir gently"),
            .init(string: "Garnish with a Lime Twist"),
        ]
    )

let paperPlane: Drink =
    .init(
        name: "Paper Plane",
        description: "",
        image: "Paper Plane",
        color: Colors.orange,
        year: 2008,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.bourbonWhisky, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.amaro, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.aperol, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Ice Cubes, Bourbon Whisky, Amaro, Aperol, & Lemon Juice into the Shaker"),
            .init(string: "Shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
        ]
    )

let penicillin: Drink =
    .init(
        name: "Penicillin",
        description: "",
        image: "Penicillin",
        color: Colors.yellow,
        year: 2000,
        base: .whisky,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker, Equipments.instance.strainer, Equipments.instance.muddler ],
        ingredients: [
            .init(ingredient: Ingredients.instance.islayWhisky, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.scotchWhisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.honeySyrup, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ginger, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Do 3-4 slices of Ginger and drop those into the Shaker"),
            .init(string: "Muddle the Ginger"),
            .init(string: "Add Islay Whisky, Scotch Whisky, Lemon Juice, & Honey Syrup"),
            .init(string: "Add Ice Cubes & shake for 10-15 seconds"),
            .init(string: "Add Ice Cubes to the Old Fashioned Glass"),
            .init(string: "Strain into the Old Fashioned Glass"),
            .init(string: "Garnish with Candied Ginger or a Twist of Lemon"),
        ]
    )

let romeoAndJuliet: Drink =
    .init(
        name: "Romeo and Juliet",
        description: "",
        image: "Romeo and Juliet",
        color: Colors.red,
        year: 2007,
        base: .gin,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.roseWater, amount: 3, unit: .drop),
            .init(ingredient: Ingredients.instance.cucumber, amount: 3, unit: .piece),
            .init(ingredient: Ingredients.instance.mintLeaves, amount: 3, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the shaker add 3 slices of Cucumber & a pinch of salt"),
            .init(string: "Muddle"),
            .init(string: "Add Gin, Simple Syrup, Lime Juice, and Rose Water"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a single Mint Leaf, and on top of it a single drop of Rose Water"),
        ]
    )

let perfectMartini: Drink =
    .init(
        name: "Perfect Martini",
        description: "",
        image: "Perfect Martini",
        color: Colors.gray,
        year: 1948,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.barspoon, Equipments.instance.mixingGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.dryVermouth, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Ice Cubes, Gin, Dry Vermouth, & Sweet Vermouth to the Mixing Glass"),
            .init(string: "Stir with Barspoon (30-40 seconds)"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Lemon Twist"),
        ]
    )

let pinaColada: Drink =
    .init(
        name: "Piña Colada",
        description: "",
        image: "Pina Colada",
        color: Colors.brown,
        year: 1920,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.puertoRico,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.barspoon, Equipments.instance.blender ],
        ingredients: [
            .init(ingredient: Ingredients.instance.darkRum, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.coconutCream, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.pineappleJuice, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.pineapple, amount: 3, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill the Blender with Ice Cubes"),
            .init(string: "Add Coconut Cream, Pineapple Juice, Dark Rum, & the Pineapple slices"),
            .init(string: "Start the blender"),
            .init(string: "Fill the mix into the Cocktail Glass"),
            .init(string: "Garnish with Cherry, Pineapple, and a Cocktail Umbrella"),
        ]
    )

let piscoOldFashioned: Drink =
    .init(
        name: "Pisco Old Fashioned",
        description: "",
        image: "Pisco Old Fashioned",
        color: Colors.gray,
        year: 1833,
        origin: Origins.instance.peru,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.pisco, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaOrangeBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 5, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add a large Ice Cube into the Old Fashioned Glass"),
            .init(string: "Add Angostura Orange Bitters, Simple Syrup, & Pisco"),
            .init(string: "Stir for 10-15 seconds"),
            .init(string: "Make a float of Angostura Bitters"),
            .init(string: "Garnish with Orange Peel"),
        ]
    )

let plantersPunch: Drink =
    .init(
        name: "Planter's Punch",
        description: "",
        image: "Planter's Punch",
        color: Colors.orange,
        year: 1895,
        base: .rum,
        category: .sour,
        origin: Origins.instance.jamaica,
        equipments: [ Equipments.instance.oldFashionedGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.jamaicanRum, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Old Fashioned Glass add Jamaican Rum, Lime Juice, & Simple Syrup"),
            .init(string: "Add Ice and stir gently"),
        ]
    )

let rumOldFashioned: Drink =
    .init(
        name: "Rum Old Fashioned",
        description: "",
        image: "Rum Old Fashioned",
        color: Colors.orange,
        year: 1833,
        base: .rum,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.barspoon, Equipments.instance.muddler ],
        ingredients: [
            .init(ingredient: Ingredients.instance.darkRum, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.demeraraSyrup, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.lime),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Cut 3 thin slices of Lime and add into the Old Fashioned Glass"),
            .init(string: "Add Demerara Syrup, Angostura Bitters"),
            .init(string: "Muddle"),
            .init(string: "Add a Large Ice Cube"),
            .init(string: "Add Dark Rum"),
            .init(string: "Stir and enjoy"),
        ]
    )

let rollsRoyce: Drink =
    .init(
        name: "Rolls Royce",
        description: "",
        image: "Rolls Royce",
        color: Colors.gray,
        year: 1930,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.dryVermouth, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.benedictine, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Mixing Glass add Gin, Dry Vermouth, Sweet Vermouth, & Benedictine"),
            .init(string: "Add Ice and stir for 30-45 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Lemon Twist"),
        ]
    )

let rustyNail: Drink =
    .init(
        name: "Rusty Nail",
        description: "",
        image: "Rusty Nail",
        color: Colors.brown,
        year: 1960,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.mixingGlass, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.scotchWhisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.drambuie, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Add Scotch Whisky, Drambuie, & Ice Cubes in the Mixing Glass"),
            .init(string: "Stir for 30-45 seconds"),
            .init(string: "Add Ice Cubes in the Old Fashioned Glass"),
            .init(string: "Strain into the Old Fashioned Glass"),
        ]
    )

let sazerac: Drink =
    .init(
        name: "Sazerac",
        description: "",
        image: "Sazerac",
        color: Colors.brown,
        year: 1950,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.absinthe, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.peychaudBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Use the Absinthe to rinse the Old Fashioned Flass"),
            .init(string: "In the Mixing Glass add Ice Cubes and Rye Whisky, Simple Syrup, & Peychaud Bitters"),
            .init(string: "Stir with Barspoon"),
            .init(string: "Strain into the Old Fashioned Glass"),
            .init(string: "Garnish with a Lemon Twist"),
        ]
    )

let seaBreeze: Drink =
    .init(
        name: "Sea Breeze",
        description: "",
        image: "Sea Breeze",
        color: Colors.blue,
        year: 1920,
        base: .vodka,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.highballGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.vodka, amount: 40, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cranberryJuice, amount: 120, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grapefruitJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Highball Glass add Vodka, Cranberry Juice, & Grapefruit Juice"),
            .init(string: "Fill with Ice"),
            .init(string: "Garnish with a Orange Twist and/or a Cocktail Cherry"),
        ]
    )

let sidecar: Drink =
    .init(
        name: "Sidecar",
        description: "",
        image: "Sidecar",
        color: Colors.orange,
        year: 1922,
        base: .brandy,
        origin: Origins.instance.france,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.cognac, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.curacao, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill Shaker with Ice Cubes"),
            .init(string: "Add Cognac, Curacao,  & Lemon Juice"),
            .init(string: "Shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
        ]
    )

let singaporeSling: Drink =
    .init(
        name: "Singapore Sling",
        description: "",
        image: "Singapore Sling",
        color: Colors.pink,
        year: 1915,
        base: .gin,
        origin: Origins.instance.singapore,
        equipments: [ Equipments.instance.highballGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cherryLiqueur, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cointreau, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.benedictine, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.pineappleJuice, amount: 120, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grenadine, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Gin, Cherry Liqueur, Cointreau, Benedictine, Pineapple Juice, Lime Juice, Grenadine, & Angostura Bitters"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Highball Glass"),
            .init(string: "Garnish with some Pineapple and/or a Cocktail Cherry"),
        ]
    )

let spritz: Drink =
    .init(
        name: "Spritz",
        description: "",
        image: "Spritz",
        color: Colors.red,
        year: 1820,
        origin: Origins.instance.italy,
        equipments: [ Equipments.instance.cocktailGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.prosecco, amount: 90, unit: .milliliters),
            .init(ingredient: Ingredients.instance.aperol, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sodaWater),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Cocktail Glass add Prosecco & Aperol"),
            .init(string: "Add Ice"),
            .init(string: "Stir gently"),
            .init(string: "Top up with a splash of Soda Water"),
            .init(string: "Garnish with a Orange Wheel"),
        ]
    )

let tartan: Drink =
    .init(
        name: "Tartan",
        description: "",
        image: "Tartan",
        color: Colors.orange,
        year: 2020,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.scotchWhisky, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.drambuie, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.amaro, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 3, unit: .dash),
            .init(ingredient: Ingredients.instance.orange, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Mixing Glass add Scotch Whisky, Sweet Vermouth, Drambuie, Amaro, & Angostura Bitters"),
            .init(string: "Add Ice & stir for 30-40 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Orange Twist"),
        ]
    )

let tequilaSunrise: Drink =
    .init(
        name: "Tequila Sunrise",
        description: "",
        image: "Tequila Sunrise",
        color: Colors.red,
        year: 1930,
        base: .tequila,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.highballGlass ],
        ingredients: [
            .init(ingredient: Ingredients.instance.tequila, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orangeJuice, amount: 90, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grenadine, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill a Highball Glass with Ice"),
            .init(string: "Add Tequila & Orange Juice"),
            .init(string: "Gently add Grenadine"),
            .init(string: "Garnish with a Orange Twist"),
        ]
    )

let theBijou: Drink =
    .init(
        name: "The Bijou",
        description: "",
        image: "The Bijou",
        color: Colors.yellow,
        year: 1890,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.chartreuse, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaOrangeBitters, amount: 1, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Mixing Glass add Gin, Sweet Vermouth, Chartreuse, & Angostura Orange Bitters"),
            .init(string: "Add Ice and stir for ~30 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a Cocktail Cherry"),
        ]
    )

let theBramble: Drink =
    .init(
        name: "The Bramble",
        description: "",
        image: "The Bramble",
        color: Colors.blue,
        year: 1985,
        base: .gin,
        category: .sour,
        origin: Origins.instance.unitedKingdom,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cremeDeMure, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.blackBerries, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Gin, Lemon Juice, & Simple Sirup"),
            .init(string: "Add Ice and shake for 5-10 seconds"),
            .init(string: "Fill the Old Fashioned Glass with Crushed Ice"),
            .init(string: "Strain into the Old Fashioned Glass"),
            .init(string: "Add a float of the Creme de Mure"),
            .init(string: "Garnish with a Black Berry"),
        ]
    )

let theLastWord: Drink =
    .init(
        name: "The Last Word",
        description: "",
        image: "The Last Word",
        color: Colors.white,
        year: 1915,
        base: .gin,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.chartreuse, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.maraschinoLiqueur, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Gin, Chartreuse, Maraschino Liqueur, & Lime Juice"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
        ]
    )

let theMomisette: Drink =
    .init(
        name: "The Momisette",
        description: "",
        image: "The Momisette",
        color: Colors.white,
        year: 1840,
        category: .sour,
        origin: Origins.instance.france,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.absinthe, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orgeatSyrup, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sodaWater, amount: 90, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Absinthe, Lemon Juice, & Orgeat Syrup"),
            .init(string: "Add Ice & shake for 10-15 seconds"),
            .init(string: "Add Ice to the Highball Glass"),
            .init(string: "Strain into the Highball Glass and combine with Soda Water"),
        ]
    )

let theQueensParkSwizzle: Drink =
    .init(
        name: "The Queen's Park Swizzle",
        description: "",
        image: "The Queen's Park Swizzle",
        color: Colors.yellow,
        year: 1920,
        base: .rum,
        origin: Origins.instance.trinidadAndTobago,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.rum, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.demeraraSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 6, unit: .dash),
            .init(ingredient: Ingredients.instance.mintLeaves, amount: 10, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Highball Glass add Mint Leaves and press lightly with a Barspoon"),
            .init(string: "Add Rum, Demerara Syrup, & Lime Juice"),
            .init(string: "Fill up with Crushed Ice"),
            .init(string: "Stir for ~20 seconds"),
            .init(string: "Add some more Crushed Ice on the top & top off with Angostura Bitters"),
            .init(string: "Garnish with some Mint"),
        ]
    )

let theScofflaw: Drink =
    .init(
        name: "The Scofflaw",
        description: "",
        image: "The Scofflaw",
        color: Colors.orange,
        year: 1924,
        base: .whisky,
        origin: Origins.instance.france,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.dryVermouth, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grenadine, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaOrangeBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Rye Whisky, Dry Vermouth, Lemon Juice, Grenadine, & Angostura Orange Bitters"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with Orange Twist"),
        ]
    )

let theTradewinds: Drink =
    .init(
        name: "The Tradewinds",
        description: "",
        image: "The Tradewinds",
        color: Colors.yellow,
        year: 1970,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.caribbean,
        equipments: [ Equipments.instance.highballGlass, Equipments.instance.barspoon ],
        ingredients: [
            .init(ingredient: Ingredients.instance.goldRum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.darkRum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.apricotLiqueur, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.coconutCream, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Highball Glass add Gold Rum, Dark Rum, Apricot Liqueur, Coconut Cream, & Lemon Juice"),
            .init(string: "Top up with Crushed Ice"),
            .init(string: "Stir contents together"),
            .init(string: "Garnish with Nutmeg & Cocktail Umbrella"),
        ]
    )

let theWardEight: Drink =
    .init(
        name: "The Ward Eight",
        description: "",
        image: "The Ward Eight",
        color: Colors.orange,
        year: 1898,
        base: .whisky,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orangeJuice, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grenadine, amount: 10, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Rye Whisky, Lemon Juice, Orange Juice, & Grenadine"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with a quarter of a Orange wheel, or a Cocktal Cherry or both"),
        ]
    )

let theZombie: Drink =
    .init(
        name: "The Zombie",
        description: "",
        image: "The Zombie",
        color: Colors.yellow,
        year: 1934,
        base: .rum,
        category: .tiki,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.tikiGlass, Equipments.instance.shaker ],
        ingredients: [
            .init(ingredient: Ingredients.instance.jamaicanRum, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.puertoRicanRum, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.demerara151Rum, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.falernum, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.absinthe, amount: 5, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 3, unit: .dash),
            .init(ingredient: Ingredients.instance.grapefruitJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cinnamonSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.grenadine, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.mintLeaves, amount: 15, unit: .piece),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill the Tiki Glass with Crushed Ice (save some of the Crushed Ice for the Shaker)"),
            .init(string: "In the Shaker add Jamaican Rum, Puerto Rican Rum, Demerara 151 Rum, Falernum, Absinthe, Angostura Bitters, Grapefruit Juice, Lime Juice, Cinnamon Syrup, & Grenadine"),
            .init(string: "Add some of the Crushed Ice and shake for 10-15 seconds"),
            .init(string: "Pour into the Tiki Glass"),
            .init(string: "Garnish with some Mint"),
        ]
    )

let tipperary: Drink =
    .init(
        name: "Tipperary",
        description: "",
        image: "Tipperary",
        color: Colors.orange,
        year: 1917,
        base: .whisky,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.irishWhisky, amount: 50, unit: .milliliters),
            .init(ingredient: Ingredients.instance.sweetVermouth, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.chartreuse, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Mixing Glass add Irish Whisky, Sweet Vermouth, Chartreuse, & Angostura Bitters"),
            .init(string: "Add Ice and stir for 30-45 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
            .init(string: "Garnish with Orange Twist"),
        ]
    )

let tommysMargarita: Drink =
    .init(
        name: "Tommy's Margarita",
        description: "",
        image: "Tommy's Margarita",
        color: Colors.white,
        year: 1990,
        base: .tequila,
        category: .sour,
        origin: Origins.instance.mexico,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.tequila, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.limeJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.agaveNectar, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Tequila, Lime Juice, & Agave Nectar"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Old Fashioned Glass"),
            .init(string: "Garnish with a Lime Wedge"),
        ]
    )

let southside: Drink =
    .init(
        name: "Southside",
        description: "",
        image: "Southside",
        color: Colors.white,
        year: 1917,
        base: .gin,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.mintLeaves, amount: 6, unit: .piece),
            .init(ingredient: Ingredients.instance.eggWhite, amount: 2, unit: .drop),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Gin, Lemon Juice, Simple Syrup, Mint Leaves, & Egg White"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
            .init(string: "Garnish with some Mint"),
        ]
    )

let trinidadEspecial: Drink =
    .init(
        name: "Trinidad Especial",
        description: "",
        image: "Trinidad Especial",
        color: Colors.red,
        year: 2008,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.pisco, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orgeatSyrup, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Angostura Bitters, Pisco, Lemon Juice, & Orgeat Syrup"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
        ]
    )

let trinidadSour: Drink =
    .init(
        name: "Trinidad Sour",
        description: "",
        image: "Trinidad Sour",
        color: Colors.red,
        year: 2009,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ryeWhisky, amount: 20, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.orgeatSyrup, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In the Shaker add Angostura Bitters, Rye Whisky, Lemon Juice, & Orgeat Syrup"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
        ]
    )

let vesper: Drink =
    .init(
        name: "Vesper",
        description: "",
        image: "Vesper",
        color: Colors.white,
        year: 1953,
        base: .gin,
        origin: Origins.instance.unitedKingdom,
        equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.shaker, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.vodka, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lilletBlanc, amount: 8, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "In a Shaker add Gin, Vodka, & Lillet Blanc"),
            .init(string: "Add Ice and shake for 10-15 seconds"),
            .init(string: "Strain into a Cocktail Glass"),
            .init(string: "Garnish with a Lemon Twist"),
        ]
    )

let whiskySour: Drink =
    .init(
        name: "Whisky Sour",
        description: "",
        image: "Whisky Sour",
        color: Colors.orange,
        year: 1870,
        base: .whisky,
        category: .sour,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker ],
        ingredients: [
            .init(ingredient: Ingredients.instance.bourbonWhisky, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lemonJuice, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.eggWhite, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 15, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 2, unit: .dash),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Put Bourbon Whisky, Lemon Juice, Egg White, & Simple Syrup into the Shaker"),
            .init(string: "Dry shake (without ice)"),
            .init(string: "Add Ice Cubes"),
            .init(string: "Shake again"),
            .init(string: "Strain into the Old Fashioned Glas"),
            .init(string: "Garnish with a few drops of Angostura Bitters on top"),
        ]
    )

let whiteNegroni: Drink =
    .init(
        name: "White Negroni",
        description: "",
        image: "White Negroni",
        color: Colors.gray,
        year: 2002,
        base: .gin,
        origin: Origins.instance.france,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.mixingGlass, Equipments.instance.strainer ],
        ingredients: [
            .init(ingredient: Ingredients.instance.gin, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.lilletBlanc, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.suze, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
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

let whiteRussian: Drink =
    .init(
        name: "White Russian",
        description: "",
        image: "White Russian",
        color: Colors.brown,
        year: 1949,
        base: .gin,
        origin: Origins.instance.belgium,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.shaker ],
        ingredients: [
            .init(ingredient: Ingredients.instance.vodka, amount: 45, unit: .milliliters),
            .init(ingredient: Ingredients.instance.kahlua, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.cream, amount: 25, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Fill the Old Fashioned Glass with Ice Cubes"),
            .init(string: "Add Vodka & Kahlua"),
            .init(string: "Stir together"),
            .init(string: "Add a float of Cream"),
        ]
    )

let wisconsinOldFashioned: Drink =
    .init(
        name: "Wisconsin Old Fashioned",
        description: "",
        image: "Wisconsin Old Fashioned",
        color: Colors.orange,
        year: 1880,
        base: .brandy,
        origin: Origins.instance.unitedStates,
        equipments: [ Equipments.instance.oldFashionedGlass, Equipments.instance.muddler ],
        ingredients: [
            .init(ingredient: Ingredients.instance.cognac, amount: 60, unit: .milliliters),
            .init(ingredient: Ingredients.instance.simpleSyrup, amount: 7, unit: .milliliters),
            .init(ingredient: Ingredients.instance.angosturaBitters, amount: 4, unit: .dash),
            .init(ingredient: Ingredients.instance.orange, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.cocktailCherry, amount: 1, unit: .piece),
            .init(ingredient: Ingredients.instance.sodaWater, amount: 30, unit: .milliliters),
            .init(ingredient: Ingredients.instance.ice),
        ],
        steps: [
            .init(string: "Make a Orange Wheel, and slice it in quarters"),
            .init(string: "Take two of the quarters and put in the Old Fashioned Glas"),
            .init(string: "Add a Cocktail Cherry, Simple Syrup, & Angostura Bitters"),
            .init(string: "Muddle and make sure not to muddle the Orange peel"),
            .init(string: "Then add the Cognac & some lightly Crushed Ice"),
            .init(string: "Top up with the Soda Water"),
            .init(string: "Garnish with the other half of the Orange Wheel"),
        ]
    )
