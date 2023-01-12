//
//  Ingridients.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

class Ingredients {
    static let absinthe: Ingredient = Ingredient(name: "Absinthe", strength: 70, origin: nil, description: "")
    static let amaretto: Ingredient = Ingredient(name: "Amaretto", strength: 28, origin: nil, description: "")
    static let angosturaBitters: Ingredient = Ingredient(name: "Angostura Bitters", strength: 44, origin: origins["Trinidad and Tobago"]!, description: "")
    static let angosturaOrangeBitters: Ingredient = Ingredient(name: "Angostura Orange Bitters", strength: 28, origin: nil, description: "")
    static let aperol: Ingredient = Ingredient(name: "Aperol", strength: 11, origin: nil, description: "")
    static let bourbonWhisky: Ingredient = Ingredient(name: "Bourbon Whisky", strength: 40, origin: origins["United States"]!, description: "")
    static let campari: Ingredient = Ingredient(name: "Campari", strength: 25, origin: origins["Italy"]!, description: "")
    static let calvados: Ingredient = Ingredient(name: "Calvados", strength: 40, origin: nil, description: "")
    static let champagne: Ingredient = Ingredient(name: "Champagne", strength: 12, origin: nil, description: "")
    static let coffee: Ingredient = Ingredient(name: "Coffee", strength: 0, origin: nil, description: "")
    static let cognac: Ingredient = Ingredient(name: "Cognac", strength: 40, origin: nil, description: "")
    static let cointreau: Ingredient = Ingredient(name: "Cointreau", strength: 40, origin: nil, description: "")
    static let cola: Ingredient = Ingredient(name: "Cola", strength: 0, origin: nil, description: "")
    static let demeraraSirup: Ingredient = Ingredient(name: "Demerara Sirup", strength: 0, origin: nil, description: "")
    static let drambuie: Ingredient = Ingredient(name: "Drambuie", strength: 40, origin: nil, description: "")
    static let eggWhite: Ingredient = Ingredient(name: "Egg White", strength: 0, origin: nil, description: "")
    static let gin: Ingredient = Ingredient(name: "Gin", strength: 40, origin: origins["Worldwide"]!, description: "")
    static let grandMarnier: Ingredient = Ingredient(name: "Grand Marnier", strength: 40, origin: nil, description: "")
    static let ice: Ingredient = Ingredient(name: "Ice", strength: 0, origin: nil, description: "")
    static let iceCrushed: Ingredient = Ingredient(name: "Ice Crushed", strength: 0, origin: nil, description: "")
    static let iceCubes: Ingredient = Ingredient(name: "Ice Cubes", strength: 0, origin: nil, description: "")
    static let irishWhisky: Ingredient = Ingredient(name: "Irish Whisky", strength: 40, origin: nil, description: "")
    static let kahlua: Ingredient = Ingredient(name: "Kahlua", strength: 20, origin: nil, description: "")
    static let lemonJuice: Ingredient = Ingredient(name: "Lemon Juice", strength: 0, origin: nil, description: "")
    static let lightRum: Ingredient = Ingredient(name: "Light Rum", strength: 40, origin: nil, description: "")
    static let limeJuice: Ingredient = Ingredient(name: "Lime Juice", strength: 0, origin: nil, description: "")
    static let mintLeaves: Ingredient = Ingredient(name: "Mint Leaves", strength: 0, origin: nil, description: "")
    static let peychaudBitters: Ingredient = Ingredient(name: "Peychaud Bitters", strength: 35, origin: nil, description: "")
    static let rum: Ingredient = Ingredient(name: "Rum", strength: 40, origin: nil, description: "")
    static let ryeWhisky: Ingredient = Ingredient(name: "Rye Whisky", strength: 40, origin: origins["United States"]!, description: "")
    static let simpleSirup: Ingredient = Ingredient(name: "Simple Sirup", strength: 0, origin: nil, description: "")
    static let sodaWater: Ingredient = Ingredient(name: "Soda Water", strength: 0, origin: nil, description: "")
    static let sweetVermouth: Ingredient = Ingredient(name: "Sweet Vermouth", strength: 18, origin: origins["Italy"]!, description: "")
    static let tequila: Ingredient = Ingredient(name: "Tequila", strength: 45, origin: nil, description: "")
    static let vodka: Ingredient = Ingredient(name: "Vodka", strength: 40, origin: origins["Poland"]!, description: "")
    static let whisky: Ingredient = Ingredient(name: "Whisky", strength: 40, origin: origins["Worldwide"]!, description: "")
    
    static let all: [Ingredient] = [
        absinthe,
        amaretto,
        angosturaBitters,
        angosturaOrangeBitters,
        aperol,
        bourbonWhisky,
        campari,
        calvados,
        champagne,
        coffee,
        cointreau,
        cola,
        demeraraSirup,
        drambuie,
        gin,
        grandMarnier,
        ice,
        iceCrushed,
        iceCubes,
        irishWhisky,
        kahlua,
        lemonJuice,
        lightRum,
        limeJuice,
        mintLeaves,
        peychaudBitters,
        rum,
        ryeWhisky,
        simpleSirup,
        sodaWater,
        sweetVermouth,
        tequila,
        vodka,
        whisky,
    ]
}
