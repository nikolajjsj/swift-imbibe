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
        id: UUID(),
        name: "Americano",
        description: "",
        equipments: [ equipments["Old Fashioned Glass"]! ],
        ingredients: [
            .init(id: UUID(), ingredient: ingredients["Sweet Vermouth"]!, volumeInML: 30, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Campari"]!, volumeInML: 30, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Soda Water"]!, volumeInML: nil, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Ice Cubes"]!, volumeInML: nil, dashes: nil),
        ],
        steps: [
            .init(id: UUID(), string: "Fill up the Old Fashioned Glass with Ice"),
            .init(id: UUID(), string: "Pour Campari, & Sweet Vermouth into the Old Fashioned Glass"),
            .init(id: UUID(), string: "Stir"),
            .init(id: UUID(), string: "Top up with Soda Water"),
            .init(id: UUID(), string: "Garnish with Citrus Wedge"),
        ],
        source: nil
    )

private let daiquiri: Drink =
    .init(
        id: UUID(),
        name: "Daiquiri",
        description: "",
        equipments: [ equipments["Cocktail Glass"]!, equipments["Shaker"]! ],
        ingredients: [
            .init(id: UUID(), ingredient: ingredients["Rum"]!, volumeInML: 60, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Lime Juice"]!, volumeInML: 30, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Simple Sirup"]!, volumeInML: 30, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Ice"]!, volumeInML: nil, dashes: nil),
        ],
        steps: [
            .init(id: UUID(), string: "Put Ice, Rum, Lime Juice, & Simple Sirup into the shaker"),
            .init(id: UUID(), string: "Shake for 10-15 seconds"),
            .init(id: UUID(), string: "Strain into the Cocktail Glass"),
            .init(id: UUID(), string: "Garnish with Lime Wheel"),
        ],
        source: nil
    )

private let manhattan: Drink =
    .init(
        id: UUID(),
        name: "Manhattan",
        description: "",
        equipments: [ equipments["Cocktail Glass"]!, equipments["Mixing Glass"]!, equipments["Barspoon"]! ],
        ingredients: [
            .init(id: UUID(), ingredient: ingredients["Rye Whisky"]!, volumeInML: 50, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Sweet Vermouth"]!, volumeInML: 20, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Angostura Bitters"]!, volumeInML: nil, dashes: 1),
            .init(id: UUID(), ingredient: ingredients["Ice Cubes"]!, volumeInML: nil, dashes: nil),
        ],
        steps: [
            .init(id: UUID(), string: "Fill up the Mixing Glass with Ice Cubes"),
            .init(id: UUID(), string: "Pour Angostura Bitters, Sweet Vermouth, & Rye Whisky into the Mixing Glass"),
            .init(id: UUID(), string: "Stir"),
            .init(id: UUID(), string: "Strain into the Cocktail Class"),
            .init(id: UUID(), string: "Garnish with Cocktail Cherry"),
        ],
        source: nil
    )

private let negroni: Drink =
    .init(
        id: UUID(),
        name: "Negroni",
        description: "",
        equipments: [ equipments["Barspoon"]!, equipments["Old Fashioned Glass"]! ],
        ingredients: [
            .init(id: UUID(), ingredient: ingredients["Gin"]!, volumeInML: 60, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Sweet Vermouth"]!, volumeInML: 30, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Campari"]!, volumeInML: 30, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Ice Cubes"]!, volumeInML: nil, dashes: nil),
        ],
        steps: [
            .init(id: UUID(), string: "Fill up the Old Fashioned Glass with Ice"),
            .init(id: UUID(), string: "Pour Campari, Sweet Vermouth, & Gin into the Old Fashioned Glass"),
            .init(id: UUID(), string: "Stir"),
            .init(id: UUID(), string: "Garnish with Orange Wedge"),
        ],
        source: nil
    )

private let oldFashioned: Drink =
    .init(
        id: UUID(),
        name: "Old Fashioned",
        description: "",
        equipments: [ equipments["Old Fashioned Glass"]!, equipments["Barspoon"]! ],
        ingredients: [
            .init(id: UUID(), ingredient: ingredients["Whisky"]!, volumeInML: 60, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Simple Sirup"]!, volumeInML: 10, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Angostura Bitters"]!, volumeInML: nil, dashes: 3),
            .init(id: UUID(), ingredient: ingredients["Ice Cubes"]!, volumeInML: nil, dashes: nil),
        ],
        steps: [
            .init(id: UUID(), string: "Put Whisky, Simple Sirup, & Angostura Bitters into the Old Fashioned Glass"),
            .init(id: UUID(), string: "Stir with a Barspoon"),
            .init(id: UUID(), string: "Add a Large Ice Cube"),
            .init(id: UUID(), string: "Garnish with a twist of Orange"),
        ],
        source: nil
    )

private let whiskySour: Drink =
    .init(
        id: UUID(),
        name: "Whisky Sour",
        description: "",
        equipments: [ equipments["Old Fashioned Glass"]!, equipments["Shaker"]! ],
        ingredients: [
            .init(id: UUID(), ingredient: ingredients["Bourbon Whisky"]!, volumeInML: 60, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Lemon Juice"]!, volumeInML: 30, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Egg White"]!, volumeInML: 30, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Simple Sirup"]!, volumeInML: 30, dashes: nil),
            .init(id: UUID(), ingredient: ingredients["Angostura Bitters"]!, volumeInML: nil, dashes: 2),
            .init(id: UUID(), ingredient: ingredients["Ice Cubes"]!, volumeInML: nil, dashes: nil),
        ],
        steps: [
            .init(id: UUID(), string: "Put Bourbon Whisky, Lemon Juice, Egg White, & Simple Sirup into the Shaker"),
            .init(id: UUID(), string: "Dry shake (without ice)"),
            .init(id: UUID(), string: "Add Ice Cubes"),
            .init(id: UUID(), string: "Shake again"),
            .init(id: UUID(), string: "Strain into the Old Fashioned Glas"),
            .init(id: UUID(), string: "Garnish with a few drops of Angostura Bitters on top"),
        ],
        source: nil
    )
