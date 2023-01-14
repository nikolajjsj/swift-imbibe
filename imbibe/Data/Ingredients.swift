//
//  Ingridients.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

class Ingredients {
    static let absinthe: Ingredient = Ingredient(
        name: "Absinthe",
        color: "5A915CCC",
        strength: 70,
        origin: nil,
        description: ""
    )
    static let amaretto: Ingredient = Ingredient(
        name: "Amaretto",
        color: "8C573ACD",
        strength: 28,
        origin: nil,
        description: ""
    )
    static let angosturaBitters: Ingredient = Ingredient(
        name: "Angostura Bitters",
        color: "959590C4",
        strength: 44,
        origin: origins["Trinidad and Tobago"]!,
        description: ""
    )
    static let angosturaOrangeBitters: Ingredient = Ingredient(
        name: "Angostura Orange Bitters",
        color: "AC7046D4",
        strength: 28,
        origin: nil,
        description: ""
    )
    static let aperol: Ingredient = Ingredient(
        name: "Aperol",
        color: "894E46B5",
        strength: 11,
        origin: nil,
        description: ""
    )
    static let bourbonWhisky: Ingredient = Ingredient(
        name: "Bourbon Whisky",
        color: "78432AB2",
        strength: 40,
        origin: origins["United States"]!,
        description: ""
    )
    static let campari: Ingredient = Ingredient(
        name: "Campari",
        color: "7F413CC0",
        strength: 25,
        origin: origins["Italy"]!,
        description: ""
    )
    static let calvados: Ingredient = Ingredient(
        name: "Calvados",
        color: "6C492CA7",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let champagne: Ingredient = Ingredient(
        name: "Champagne",
        color: "49422DB0",
        strength: 12,
        origin: nil,
        description: ""
    )
    static let coffee: Ingredient = Ingredient(
        name: "Coffee",
        color: "6C492CA7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let cognac: Ingredient = Ingredient(
        name: "Cognac",
        color: "8C573ACD",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let cointreau: Ingredient = Ingredient(
        name: "Cointreau",
        color: "935B34C1",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let cola: Ingredient = Ingredient(
        name: "Cola",
        color: "633B38C5",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let curacao: Ingredient = Ingredient(
        name: "Curacao",
        color: "60312997",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let darkRum: Ingredient = Ingredient(
        name: "Dark Rum",
        color: "54392BBF",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let demeraraSirup: Ingredient = Ingredient(
        name: "Demerara Sirup",
        color: "4A3735D0",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let drambuie: Ingredient = Ingredient(
        name: "Drambuie",
        color: "54392BBF",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let dryVermouth: Ingredient = Ingredient(
        name: "Dry Vermouth",
        color: "83935DCD",
        strength: 18,
        origin: nil,
        description: ""
    )
    static let eggWhite: Ingredient = Ingredient(
        name: "Egg White",
        color: "6C5632C8",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let gin: Ingredient = Ingredient(
        name: "Gin",
        color: "3C3D3CD5",
        strength: 40,
        origin: origins["Worldwide"]!,
        description: ""
    )
    static let gingerBeer: Ingredient = Ingredient(
        name: "Ginger Beer",
        color: "97988EC5",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let grandMarnier: Ingredient = Ingredient(
        name: "Grand Marnier",
        color: "60312997",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let ice: Ingredient = Ingredient(
        name: "Ice",
        color: "3F404392",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let iceCrushed: Ingredient = Ingredient(
        name: "Ice Crushed",
        color: "3F4E53B7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let iceCubes: Ingredient = Ingredient(
        name: "Ice Cubes",
        color: "3F4E53B7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let irishWhisky: Ingredient = Ingredient(
        name: "Irish Whisky",
        color: "62654BC6",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let kahlua: Ingredient = Ingredient(
        name: "Kahlua",
        color: "6C5632C8",
        strength: 20,
        origin: nil,
        description: ""
    )
    static let lemon: Ingredient = Ingredient(
        name: "Lemon",
        color: "675210B7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let lemonJuice: Ingredient = Ingredient(
        name: "Lemon Juice",
        color: "675210B7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let lemonTwist: Ingredient = Ingredient(
        name: "Lemon Twist",
        color: "675210B7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let lightRum: Ingredient = Ingredient(
        name: "Light Rum",
        color: "A0A39BC7",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let lime: Ingredient = Ingredient(
        name: "Lime",
        color: "496311BD",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let limeJuice: Ingredient = Ingredient(
        name: "Lime Juice",
        color: "496311BD",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let mintLeaves: Ingredient = Ingredient(
        name: "Mint Leaves",
        color: "3F68229D",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let peychaudBitters: Ingredient = Ingredient(
        name: "Peychaud Bitters",
        color: "755D5ACE",
        strength: 35,
        origin: nil,
        description: ""
    )
    static let rum: Ingredient = Ingredient(
        name: "Rum",
        color: "615752BF",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let ryeWhisky: Ingredient = Ingredient(
        name: "Rye Whisky",
        color: "774B21CC",
        strength: 40,
        origin: origins["United States"]!,
        description: ""
    )
    static let simpleSirup: Ingredient = Ingredient(
        name: "Simple Sirup",
        color: "8F8D8AAD",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let sodaWater: Ingredient = Ingredient(
        name: "Soda Water",
        color: "A3A49ECA",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let sweetVermouth: Ingredient = Ingredient(
        name: "Sweet Vermouth",
        color: "5F4F4AC5",
        strength: 18,
        origin: origins["Italy"]!,
        description: ""
    )
    static let tequila: Ingredient = Ingredient(
        name: "Tequila",
        color: "84827AA6",
        strength: 45,
        origin: nil,
        description: ""
    )
    static let vodka: Ingredient = Ingredient(
        name: "Vodka",
        color: "A0A4AAD4",
        strength: 40,
        origin: origins["Poland"]!,
        description: ""
    )
    static let whisky: Ingredient = Ingredient(
        name: "Whisky",
        color: "894118BD",
        strength: 40,
        origin: origins["Worldwide"]!,
        description: ""
    )
    
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
        cognac,
        cointreau,
        cola,
        curacao,
        darkRum,
        demeraraSirup,
        drambuie,
        dryVermouth,
        eggWhite,
        gin,
        gingerBeer,
        grandMarnier,
        ice,
        iceCrushed,
        iceCubes,
        irishWhisky,
        kahlua,
        lemon,
        lemonJuice,
        lemonTwist,
        lightRum,
        lime,
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
