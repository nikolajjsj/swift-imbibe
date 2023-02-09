//
//  DrinkModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation
import SwiftUI

final class Drink: Identifiable, Equatable, Hashable {
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
                return Ingredients.instance.whisky.image
            case .gin:
                return Ingredients.instance.gin.image
            case .rum:
                return Ingredients.instance.rum.image
            case .vodka:
                return Ingredients.instance.vodka.image
            case .tequila:
                return Ingredients.instance.tequila.image
            case .cognac:
                return Ingredients.instance.cognac.image
            default:
                return nil
            }
        }
        
        var drinks: [Drink] {
            switch self {
            case .whisky:
                return Drinks.instance.whiskyBased
            case .gin:
                return Drinks.instance.ginBased
            case .rum:
                return Drinks.instance.rumBased
            case .vodka:
                return Drinks.instance.vodkaBased
            case .tequila:
                return Drinks.instance.tequilaBased
            case .cognac:
                return Drinks.instance.cognacBased
            default:
                return []
            }
        }
    }
}

final class Drinks {
    static let instance = Drinks()
    private init() { }
    
    let bourbonRenewal: Drink =
        .init(
            name: "Bourbon Renewal",
            description: "",
            image: "Bourbon Renewal",
            color: Colors.brown,
            year: 2004,
            base: .whisky,
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
    
    let americano: Drink =
        .init(
            name: "Americano",
            description: "",
            image: "Americano",
            color: Colors.red,
            year: 1860,
            base: .other,
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
            equipments: [ Equipments.instance.cocktailGlass, Equipments.instance.mixingGlass, Equipments.instance.barspoon ],
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
    
    let cubaLibre: Drink =
        .init(
            name: "Cuba Libre",
            description: "",
            image: "Cuba Libre",
            color: Colors.brown,
            year: 1900,
            base: .rum,
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
                .init(ingredient: Ingredients.instance.simpleSyrup, amount: 20, unit: .piece),
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
                .init(string: "Add Irish Whisky & Simple Syrup into the Toddy Glass"),
                .init(string: "Top up with hot Coffee"),
                .init(string: "Garnish with Whipped Cream"),
            ]
        )
    
    let longIslandIceTea: Drink =
        .init(
            name: "Long Island Ice Tea",
            description: "",
            image: "Long Island Ice Tea",
            color: Colors.orange,
            year: 1972,
            base: .other,
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
            base: .other,
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
            equipments: [ Equipments.instance.mixingGlass, Equipments.instance.barspoon, Equipments.instance.oldFashionedGlass ],
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
    
    let sidecar: Drink =
        .init(
            name: "Sidecar",
            description: "",
            image: "Sidecar",
            color: Colors.orange,
            year: 1922,
            base: .cognac,
            origin: Origins.instance.france,
            equipments: [ Equipments.instance.shaker, Equipments.instance.cocktailGlass ],
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
    
    let theTradewinds: Drink =
        .init(
            name: "The Tradewinds",
            description: "",
            image: "The Tradewinds",
            color: Colors.yellow,
            year: 1970,
            base: .rum,
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
    
    let whiskySour: Drink =
        .init(
            name: "Whisky Sour",
            description: "",
            image: "Whisky Sour",
            color: Colors.orange,
            year: 1870,
            base: .whisky,
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
                .init(string: "Then add the Cream"),
            ]
        )
    
    let wisconsinOldFashioned: Drink =
        .init(
            name: "Wisconsin Old Fashioned",
            description: "",
            image: "Wisconsin Old Fashioned",
            color: Colors.orange,
            year: 1880,
            base: .cognac,
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
    
    var all: [Drink] {
        [
            americano,
            bourbonRenewal,
            classicMartini,
            corpseReviver,
            cubaLibre,
            daiquiri,
            darkAndStormy,
            deshler,
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
            modernDeshler,
            modernDeshlerTwisted,
            mojito,
            moscowMule,
            negroni,
            newYourSour,
            oldFashioned,
            perfectMartini,
            painkiller,
            paperPlane,
            penicillin,
            pinaColada,
            piscoOldFashioned,
            rumOldFashioned,
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
    }
    
    // Base spirit
    var ginBased: [Drink] {
        all.filter({ $0.base == .gin })
    }
    var whiskyBased: [Drink] {
        all.filter({ $0.base == .whisky })
    }
    var rumBased: [Drink] {
        all.filter({ $0.base == .rum })
    }
    var cognacBased: [Drink] {
        all.filter({ $0.base == .cognac })
    }
    var tequilaBased: [Drink] {
        all.filter({ $0.base == .tequila })
    }
    var vodkaBased: [Drink] {
        all.filter({ $0.base == .vodka })
    }
    
    // Country
    var countries: Dictionary<Origin, [Drink]> {
        Dictionary(grouping: all, by: { $0.origin})
    }
    
    // Get all drinks that are available with the gives ingredients
    func available(selections: [String]) -> [Drink] {
        all.filter({ $0.ingredients.allSatisfy({
            selections.contains($0.ingredient.name)
            || !Set(selections).isDisjoint(with: $0.ingredient.alternatives.map({ $0.name }))
        }) })
    }
}