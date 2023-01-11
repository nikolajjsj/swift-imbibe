//
//  Drinks.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

let drinks: [Drink] = [
    americano,
    daiquiri,
    manhattan,
    negroni,
    oldFashioned,
    whiskySour,
]

let iconicDrinks: [Drink] = [
    daiquiri,
    negroni,
    oldFashioned,
    whiskySour,
]

private let americano: Drink =
    .init(
        name: "Americano",
        description: "",
        equipments: [ equipments["Old Fashioned Glass"]! ],
        ingredients: [
            .init(ingredient: ingredients["Sweet Vermouth"]!, volumeInML: 30, dashes: nil),
            .init(ingredient: ingredients["Campari"]!, volumeInML: 30, dashes: nil),
            .init(ingredient: ingredients["Soda Water"]!, volumeInML: nil, dashes: nil),
            .init(ingredient: ingredients["Ice Cubes"]!, volumeInML: nil, dashes: nil),
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

private let daiquiri: Drink =
    .init(
        name: "Daiquiri",
        description: "",
        equipments: [ equipments["Cocktail Glass"]!, equipments["Shaker"]! ],
        ingredients: [
            .init(ingredient: ingredients["Rum"]!, volumeInML: 60, dashes: nil),
            .init(ingredient: ingredients["Lime Juice"]!, volumeInML: 30, dashes: nil),
            .init(ingredient: ingredients["Simple Sirup"]!, volumeInML: 30, dashes: nil),
            .init(ingredient: ingredients["Ice"]!, volumeInML: nil, dashes: nil),
        ],
        steps: [
            .init(string: "Put Ice, Rum, Lime Juice, & Simple Sirup into the shaker"),
            .init(string: "Shake for 10-15 seconds"),
            .init(string: "Strain into the Cocktail Glass"),
            .init(string: "Garnish with Lime Wheel"),
        ],
        source: nil
    )

private let manhattan: Drink =
    .init(
        name: "Manhattan",
        description: "",
        equipments: [ equipments["Cocktail Glass"]!, equipments["Mixing Glass"]!, equipments["Barspoon"]! ],
        ingredients: [
            .init(ingredient: ingredients["Rye Whisky"]!, volumeInML: 50, dashes: nil),
            .init(ingredient: ingredients["Sweet Vermouth"]!, volumeInML: 20, dashes: nil),
            .init(ingredient: ingredients["Angostura Bitters"]!, volumeInML: nil, dashes: 1),
            .init(ingredient: ingredients["Ice Cubes"]!, volumeInML: nil, dashes: nil),
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

private let negroni: Drink =
    .init(
        name: "Negroni",
        description: "",
        equipments: [ equipments["Barspoon"]!, equipments["Old Fashioned Glass"]! ],
        ingredients: [
            .init(ingredient: ingredients["Gin"]!, volumeInML: 60, dashes: nil),
            .init(ingredient: ingredients["Sweet Vermouth"]!, volumeInML: 30, dashes: nil),
            .init(ingredient: ingredients["Campari"]!, volumeInML: 30, dashes: nil),
            .init(ingredient: ingredients["Ice Cubes"]!, volumeInML: nil, dashes: nil),
        ],
        steps: [
            .init(string: "Fill up the Old Fashioned Glass with Ice"),
            .init(string: "Pour Campari, Sweet Vermouth, & Gin into the Old Fashioned Glass"),
            .init(string: "Stir"),
            .init(string: "Garnish with Orange Wedge"),
        ],
        source: nil
    )

private let oldFashioned: Drink =
    .init(
        name: "Old Fashioned",
        description: "",
        equipments: [ equipments["Old Fashioned Glass"]!, equipments["Barspoon"]! ],
        ingredients: [
            .init(ingredient: ingredients["Whisky"]!, volumeInML: 60, dashes: nil),
            .init(ingredient: ingredients["Simple Sirup"]!, volumeInML: 10, dashes: nil),
            .init(ingredient: ingredients["Angostura Bitters"]!, volumeInML: nil, dashes: 3),
            .init(ingredient: ingredients["Ice Cubes"]!, volumeInML: nil, dashes: nil),
        ],
        steps: [
            .init(string: "Put Whisky, Simple Sirup, & Angostura Bitters into the Old Fashioned Glass"),
            .init(string: "Stir with a Barspoon"),
            .init(string: "Add a Large Ice Cube"),
            .init(string: "Garnish with a twist of Orange"),
        ],
        source: nil
    )

private let whiskySour: Drink =
    .init(
        name: "Whisky Sour",
        description: "",
        equipments: [ equipments["Old Fashioned Glass"]!, equipments["Shaker"]! ],
        ingredients: [
            .init(ingredient: ingredients["Bourbon Whisky"]!, volumeInML: 60, dashes: nil),
            .init(ingredient: ingredients["Lemon Juice"]!, volumeInML: 30, dashes: nil),
            .init(ingredient: ingredients["Egg White"]!, volumeInML: 30, dashes: nil),
            .init(ingredient: ingredients["Simple Sirup"]!, volumeInML: 30, dashes: nil),
            .init(ingredient: ingredients["Angostura Bitters"]!, volumeInML: nil, dashes: 2),
            .init(ingredient: ingredients["Ice Cubes"]!, volumeInML: nil, dashes: nil),
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
