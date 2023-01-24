//
//  DrinkModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation
import SwiftUI

class Drink: Identifiable, Equatable, Hashable {
    static func == (lhs: Drink, rhs: Drink) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let description: String
    let image: String
    let color: Color
    let year: Int?
    let base: Base
    let origin: Origin
    let equipments: [Equipment]
    let ingredients: [IngredientWithVolume]
    let steps: [DrinkStep]
    
    init(
        id: UUID = UUID(),
        name: String,
        description: String,
        image: String,
        color: Color,
        year: Int? = nil,
        base: Base,
        origin: Origin,
        equipments: [Equipment],
        ingredients: [IngredientWithVolume],
        steps: [DrinkStep]
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.image = image
        self.color = color
        self.year = year
        self.base = base
        self.origin = origin
        self.equipments = equipments
        self.ingredients = ingredients
        self.steps = steps
    }
    
    var strength: Int {
        Int(ingredients.reduce(0.0, { $0 + Double($1.ingredient.strength) }) / Double(ingredients.count))
    }
    
    enum Base: String {
        case whisky = "Whisky"
        case gin = "Gin"
        case rum = "Rum"
        case vodka = "Vodka"
        case tequila = "Tequila"
        case cognac = "Cognac"
        
        case other = "Other"
        
        static var all: [Base] {
            [.whisky, .gin, .rum, .vodka, .tequila, .cognac]
        }
        
        var image: String? {
            switch self {
            case .whisky:
                return Ingredient.whisky.image
            case .gin:
                return Ingredient.gin.image
            case .rum:
                return Ingredient.rum.image
            case .vodka:
                return Ingredient.vodka.image
            case .tequila:
                return Ingredient.tequila.image
            case .cognac:
                return Ingredient.cognac.image
            default:
                return nil
            }
        }
        
        var drinks: [Drink] {
            switch self {
            case .whisky:
                return whiskyBased
            case .gin:
                return ginBased
            case .rum:
                return rumBased
            case .vodka:
                return vodkaBased
            case .tequila:
                return tequilaBased
            case .cognac:
                return cognacBased
            default:
                return []
            }
        }
    }
}

extension Drink {
    static let bourbonRenewal: Drink =
        .init(
            name: "Bourbon Renewal",
            description: "",
            image: "Bourbon Renewal",
            color: Colors.brown,
            year: 2004,
            base: .whisky,
            origin: Origin.unitedStates,
            equipments: [ Equipment.oldFashionedGlass, Equipment.shaker, Equipment.strainer ],
            ingredients: [
                .init(ingredient: Ingredient.bourbonWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.cremeDeCasis, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredient.angosturaBitters, amount: 2, unit: .dash),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.italy,
            equipments: [ Equipment.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredient.sweetVermouth, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.campari, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.sodaWater),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.cocktailGlass, Equipment.barspoon, Equipment.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredient.gin, amount: 75, unit: .milliliters),
                .init(ingredient: Ingredient.dryVermouth, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.angosturaOrangeBitters, amount: 1, unit: .dash),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.cocktailGlass, Equipment.mixingGlass, Equipment.barspoon ],
            ingredients: [
                .init(ingredient: Ingredient.gin, amount: 22, unit: .milliliters),
                .init(ingredient: Ingredient.kinaLaeroDor, amount: 22, unit: .milliliters),
                .init(ingredient: Ingredient.curacao, amount: 22, unit: .milliliters),
                .init(ingredient: Ingredient.lemonJuice, amount: 22, unit: .milliliters),
                .init(ingredient: Ingredient.absinthe, amount: 1, unit: .dash),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.cuba,
            equipments: [ Equipment.highballGlass, Equipment.barspoon ],
            ingredients: [
                .init(ingredient: Ingredient.lightRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.limeJuice, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredient.cola, amount: 120, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.cuba,
            equipments: [ Equipment.cocktailGlass, Equipment.shaker ],
            ingredients: [
                .init(ingredient: Ingredient.rum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.limeJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.bermuda,
            equipments: [ Equipment.highballGlass, Equipment.barspoon ],
            ingredients: [
                .init(ingredient: Ingredient.darkRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.gingerBeer, amount: 90, unit: .milliliters),
                .init(ingredient: Ingredient.limeJuice, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.cocktailGlass, Equipment.barspoon, Equipment.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredient.gin, amount: 75, unit: .milliliters),
                .init(ingredient: Ingredient.dryVermouth, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.olives, amount: 3, unit: .piece),
                .init(ingredient: Ingredient.oliveBrine, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.germany,
            equipments: [ Equipment.highballGlass, Equipment.shaker, Equipment.strainer ],
            ingredients: [
                .init(ingredient: Ingredient.tequila, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.cremeDeCasis, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.limeJuice, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.gingerBeer, amount: 100, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedKingdom,
            equipments: [ Equipment.cocktailGlass, Equipment.shaker, Equipment.strainer ],
            ingredients: [
                .init(ingredient: Ingredient.vodka, amount: 40, unit: .milliliters),
                .init(ingredient: Ingredient.coffeeLiqueur, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 20, unit: .piece),
                .init(ingredient: Ingredient.coffee, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.cocktailGlass, Equipment.barspoon, Equipment.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredient.gin, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredient.dryVermouth, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedKingdom,
            equipments: [ Equipment.highballGlass, Equipment.shaker ],
            ingredients: [
                .init(ingredient: Ingredient.gin, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.sodaWater, amount: 80, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.scotland,
            equipments: [ Equipment.toddyGlass ],
            ingredients: [
                .init(ingredient: Ingredient.whisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.demeraraSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.coffee),
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
            origin: Origin.ireland,
            equipments: [ Equipment.toddyGlass ],
            ingredients: [
                .init(ingredient: Ingredient.irishWhisky, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.coffee),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.highballGlass, Equipment.barspoon ],
            ingredients: [
                .init(ingredient: Ingredient.tequila, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.vodka, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.rum, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.curacao, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.gin, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.cola, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.oldFashionedGlass, Equipment.shaker, Equipment.strainer ],
            ingredients: [
                .init(ingredient: Ingredient.darkRum, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.lightRum, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.curacao, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.limeJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.orgeatSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.cocktailGlass, Equipment.mixingGlass, Equipment.barspoon ],
            ingredients: [
                .init(ingredient: Ingredient.ryeWhisky, amount: 50, unit: .milliliters),
                .init(ingredient: Ingredient.sweetVermouth, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredient.angosturaBitters, amount: 2, unit: .dash),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.mexico,
            equipments: [ Equipment.cocktailGlass, Equipment.shaker, Equipment.strainer ],
            ingredients: [
                .init(ingredient: Ingredient.tequila, amount: 35, unit: .milliliters),
                .init(ingredient: Ingredient.cointreau, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredient.limeJuice, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.cuba,
            equipments: [ Equipment.highballGlass, Equipment.muddler, Equipment.barspoon, Equipment.shaker ],
            ingredients: [
                .init(ingredient: Ingredient.lightRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.demeraraSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.limeJuice, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.sodaWater, amount: 80, unit: .milliliters),
                .init(ingredient: Ingredient.mintLeaves, amount: 10, unit: .piece),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.oldFashionedGlass, Equipment.barspoon ],
            ingredients: [
                .init(ingredient: Ingredient.vodka, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.limeJuice, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredient.gingerBeer, amount: 120, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.italy,
            equipments: [ Equipment.barspoon, Equipment.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredient.gin, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.sweetVermouth, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.campari, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.oldFashionedGlass, Equipment.shaker ],
            ingredients: [
                .init(ingredient: Ingredient.ryeWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.curacao, amount: 8, unit: .milliliters),
                .init(ingredient: Ingredient.eggWhite, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.redWine, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.barspoon, Equipment.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredient.whisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredient.angosturaBitters, amount: 3, unit: .dash),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.britishVirginIslands,
            equipments: [ Equipment.oldFashionedGlass, Equipment.shaker ],
            ingredients: [
                .init(ingredient: Ingredient.darkRum, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.orangeJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.pineappleJuice, amount: 120, unit: .milliliters),
                .init(ingredient: Ingredient.coconutCream, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.cocktailGlass, Equipment.shaker, Equipment.strainer ],
            ingredients: [
                .init(ingredient: Ingredient.bourbonWhisky, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.amaro, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.aperol, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.lemonJuice, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.oldFashionedGlass, Equipment.shaker, Equipment.strainer, Equipment.muddler ],
            ingredients: [
                .init(ingredient: Ingredient.islayWhisky, amount: 10, unit: .milliliters),
                .init(ingredient: Ingredient.scotchWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.lemonJuice, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.honeySirup, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.ginger, amount: 1, unit: .piece),
                .init(ingredient: Ingredient.ice),
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
    
    static let romeoAndJuliet: Drink =
        .init(
            name: "Romeo and Juliet",
            description: "",
            image: "Romeo and Juliet",
            color: Colors.red,
            year: 2007,
            base: .gin,
            origin: Origin.unitedStates,
            equipments: [Equipment.cocktailGlass, Equipment.shaker, Equipment.strainer],
            ingredients: [
                .init(ingredient: Ingredient.gin, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.limeJuice, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.roseWater, amount: 3, unit: .drop),
                .init(ingredient: Ingredient.cucumber, amount: 3, unit: .piece),
                .init(ingredient: Ingredient.mintLeaves, amount: 3, unit: .piece),
                .init(ingredient: Ingredient.ice),
            ],
            steps: [
                .init(string: "In the shaker add 3 slices of Cucumber & a pinch of salt"),
                .init(string: "Muddle"),
                .init(string: "Add Gin, Simple Sirup, Lime Juice, and Rose Water"),
                .init(string: "Add Ice and shake for 10-15 seconds"),
                .init(string: "Strain into the Cocktail Glass"),
                .init(string: "Garnish with a single Mint Leaf, and on top of it a single drop of Rose Water"),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.cocktailGlass, Equipment.barspoon, Equipment.mixingGlass ],
            ingredients: [
                .init(ingredient: Ingredient.gin, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredient.dryVermouth, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.sweetVermouth, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.puertoRico,
            equipments: [ Equipment.cocktailGlass, Equipment.barspoon, Equipment.blender ],
            ingredients: [
                .init(ingredient: Ingredient.darkRum, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredient.coconutCream, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredient.pineappleJuice, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredient.pineapple, amount: 3, unit: .piece),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.oldFashionedGlass, Equipment.mixingGlass, Equipment.strainer ],
            ingredients: [
                .init(ingredient: Ingredient.scotchWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.drambuie, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.angosturaBitters, amount: 2, unit: .dash),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.mixingGlass, Equipment.barspoon, Equipment.oldFashionedGlass ],
            ingredients: [
                .init(ingredient: Ingredient.ryeWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.absinthe, amount: 2, unit: .dash),
                .init(ingredient: Ingredient.simpleSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.peychaudBitters, amount: 2, unit: .dash),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.france,
            equipments: [ Equipment.shaker, Equipment.cocktailGlass ],
            ingredients: [
                .init(ingredient: Ingredient.cognac, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.curacao, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredient.lemonJuice, amount: 20, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.caribbean,
            equipments: [ Equipment.highballGlass, Equipment.barspoon ],
            ingredients: [
                .init(ingredient: Ingredient.goldRum, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.darkRum, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.apricotLiqueur, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.coconutCream, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.unitedStates,
            equipments: [ Equipment.oldFashionedGlass, Equipment.shaker ],
            ingredients: [
                .init(ingredient: Ingredient.bourbonWhisky, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.lemonJuice, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.eggWhite, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 15, unit: .milliliters),
                .init(ingredient: Ingredient.angosturaBitters, amount: 2, unit: .dash),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.france,
            equipments: [ Equipment.oldFashionedGlass, Equipment.mixingGlass, Equipment.strainer ],
            ingredients: [
                .init(ingredient: Ingredient.gin, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredient.lilletBlanc, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.suze, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
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
            origin: Origin.belgium,
            equipments: [ Equipment.oldFashionedGlass, Equipment.shaker ],
            ingredients: [
                .init(ingredient: Ingredient.vodka, amount: 45, unit: .milliliters),
                .init(ingredient: Ingredient.kahlua, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.cream, amount: 25, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
            ],
            steps: [
                .init(string: "Fill the Old Fashioned Glass with Ice Cubes"),
                .init(string: "Add Vodka & Kahlua"),
                .init(string: "Stir together"),
                .init(string: "Then add the Cream"),
            ]
        )
    static let wisconsinOldFashioned: Drink =
        .init(
            name: "Wisconsin Old Fashioned",
            description: "",
            image: "Wisconsin Old Fashioned",
            color: Colors.orange,
            year: 1880,
            base: .cognac,
            origin: Origin.unitedStates,
            equipments: [ Equipment.oldFashionedGlass, Equipment.muddler ],
            ingredients: [
                .init(ingredient: Ingredient.cognac, amount: 60, unit: .milliliters),
                .init(ingredient: Ingredient.simpleSirup, amount: 7, unit: .milliliters),
                .init(ingredient: Ingredient.angosturaBitters, amount: 4, unit: .dash),
                .init(ingredient: Ingredient.orange, amount: 1, unit: .piece),
                .init(ingredient: Ingredient.cocktailCherry, amount: 1, unit: .piece),
                .init(ingredient: Ingredient.sodaWater, amount: 30, unit: .milliliters),
                .init(ingredient: Ingredient.ice),
            ],
            steps: [
                .init(string: "Make a Orange Wheel, and slice it in quarters"),
                .init(string: "Take two of the quarters and put in the Old Fashioned Glas"),
                .init(string: "Add a Cocktail Cherry, Simple Sirup, & Angostura Bitters"),
                .init(string: "Muddle and make sure not to muddle the Orange peel"),
                .init(string: "Then add the Cognac & some lightly Crushed Ice"),
                .init(string: "Top up with the Soda Water"),
                .init(string: "Garnish with the other half of the Orange Wheel"),
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
        romeoAndJuliet,
        rustyNail,
        sazerac,
        sidecar,
        theTradewinds,
        whiskySour,
        whiteNegroni,
        whiteRussian,
        wisconsinOldFashioned,
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
        all.filter({ $0.ingredients.allSatisfy({
            selections.contains($0.ingredient.name)
            || !Set(selections).isDisjoint(with: $0.ingredient.alternatives.map({ $0.name }))
        }) })
    }
}
