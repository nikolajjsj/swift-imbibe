//
//  IngredientWithVolume.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import Foundation
import SwiftUI

class Ingredient: Identifiable, Equatable, Hashable {
    static func == (lhs: Ingredient, rhs: Ingredient) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let image: String
    let color: Color
    let strength: Int
    let origin: Origin?
    let description: String
    let alternatives: [Ingredient]
    let tags: [Tag]
    
    init(
        id: UUID = UUID(),
        name: String,
        image: String,
        color: Color,
        strength: Int,
        origin: Origin?,
        description: String,
        alternatives: [Ingredient] = [],
        tags: [Tag] = []
    ) {
        self.id = id
        self.name = name
        self.image = image
        self.color = color
        self.strength = strength
        self.origin = origin
        self.description = description
        self.alternatives = alternatives
        self.tags = tags
    }
    
    enum Tag: String {
        case base = "Base"
        case spirit = "Spirit"
    }
}

class IngredientWithVolume: Identifiable, Hashable {
    static func == (lhs: IngredientWithVolume, rhs: IngredientWithVolume) -> Bool {
        lhs.ingredient.name == rhs.ingredient.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ingredient.name)
    }
    
    let id: UUID
    let ingredient: Ingredient
    let amount: Double?
    let unit: UnitVolume?
    
    init(
        id: UUID = UUID(),
        ingredient: Ingredient,
        amount: Double? = nil,
        unit: UnitVolume? = nil
    ) {
        self.id = id
        self.ingredient = ingredient
        self.amount = amount
        self.unit = unit
    }
    
    func toUnit(_ to: UnitVolume) -> Double? {
        guard let amount = amount, let unit = unit else { return nil }
        
        let m = Measurement(value: amount, unit: unit)
        return m.converted(to: to).value
    }
}

extension UnitVolume {
    static let dash = UnitVolume(symbol: "dash")
    static let drop = UnitVolume(symbol: "drop")
    static let piece = UnitVolume(symbol: "piece")
}


extension Ingredient {
        static let absinthe: Ingredient = Ingredient(
        name: "Absinthe",
        image: "Absinthe",
        color: Colors.green,
        strength: 60,
        origin: nil,
        description: """
An anise-flavored spirit, that contains a high level of alcohol. Absinthe is derived from botanicals, including the leaves & flowers of wormwood, and is usually mixed together with anise, fennel, and other culinary herbs.
Many misconceptions about absinthe, has arised through the years. One especially is that absinthe is a hallucinogen, causing the drinker to see all sorts of stuff that isn't real. This misconception is caused by absinthe containing the compound: "thujone", even though absinthe only contains a minute amount of it. This caused absinthe to be banned from most of Europe and the United States by 1915, though it later was legal again, though first in 2007 in the case of the United States.
""",
        tags: [.spirit]
    )
    static let amaretto: Ingredient = Ingredient(
        name: "Amaretto",
        image: "Amaretto",
        color: Colors.red,
        strength: 28,
        origin: Origin.italy,
        description: """
Originating from Italy, with flavors of almonds, apricot-pits, peach-pits, which all gives out an almond-like flavor which Amaretto is known for.
""",
        tags: [.base, .spirit]
    )
    static let amaro: Ingredient = Ingredient(
        name: "Amaro",
        image: "Amaro",
        color: Colors.red,
        strength: 25,
        origin: Origin.italy,
        description: "",
        tags: [.spirit]
    )
    static let angosturaBitters: Ingredient = Ingredient(
        name: "Angostura Bitters",
        image: "Angostura Bitters",
        color: Colors.black,
        strength: 44,
        origin: Origin.trinidadAndTobago,
        description: """
Angostura makes the most famous and widely used type of herbal Bitters. Angostura Bitters was created by a German surgeon from Simòn Bolìvars army (Venezuela) to treat stomach disorders and indegestion. But in its later years it has been proved a great addition to a lot of drinks.
""",
        tags: [.base, .spirit]
    )
    static let angosturaOrangeBitters: Ingredient = Ingredient(
        name: "Angostura Orange Bitters",
        image: "Angostura Orange Bitters",
        color: Colors.orange,
        strength: 28,
        origin: Origin.trinidadAndTobago,
        description: "The Orange version of the famous Angostura Bitters.",
        tags: [.spirit]
    )
    static let aperol: Ingredient = Ingredient(
        name: "Aperol",
        image: "Aperol",
        color: Colors.red,
        strength: 11,
        origin: nil,
        description: "",
        tags: [.spirit]
    )
    static let apricotLiqueur: Ingredient = Ingredient(
        name: "Apricot Liqueur",
        image: "Apricot Liqueur",
        color: Colors.yellow,
        strength: 25,
        origin: nil,
        description: "",
        tags: [.spirit]
    )
    static let bourbonWhisky: Ingredient = Ingredient(
        name: "Bourbon Whisky",
        image: "Bourbon Whisky",
        color: Colors.brown,
        strength: 40,
        origin: Origin.unitedStates,
        description: """
A type of Whisky that typically has a rich & sweet taste, made of at least 51% corn aged in new-oak barrels. Bourbon has to be made in the United States to be able to call itself a Bourbon Whisky.
""",
        alternatives: [Ingredient.whisky],
        tags: [.spirit]
    )
    static let campari: Ingredient = Ingredient(
        name: "Campari",
        image: "Campari",
        color: Colors.red,
        strength: 25,
        origin: Origin.italy,
        description: """
Created by Gaspare Campari and with a very bittersweet taste, usually used as a aperitif (before dinner). Campari is flavored with 68 different herbs & spices, and was made in the years between 1860 to 1867 in Milan.
""",
        tags: [.base, .spirit]
    )
    static let calvados: Ingredient = Ingredient(
        name: "Calvados",
        image: "Calvados",
        color: Colors.brown,
        strength: 40,
        origin: nil,
        description: """
Calvados is a type of apple brandy, made from a variety of different types of apples, in the northern region of France (Normandy). Calvados is distilled from the fermented product of a dry apple cider, with a minimum aging time of 2 years in oak barrels, but can be aged for longer.
""",
        tags: [.spirit]
    )
    static let champagne: Ingredient = Ingredient(
        name: "Champagne",
        image: "Champagne",
        color: Colors.green,
        strength: 12,
        origin: nil,
        description: """
Champagne has been used for a variety of different sparkling wines, though many are actually not a "true" Champagne. To be called a Champagne to wine has to be made from grapes grown in the Champagne region of France.
""",
        tags: [.base, .spirit]
    )
    static let cremeDeCasis: Ingredient = Ingredient(
        name: "Creme de Casis",
        image: "Creme de Casis",
        color: Colors.gray,
        strength: 25,
        origin: nil,
        description: "",
        tags: [.spirit]
    )
    static let cocktailCherry: Ingredient = Ingredient(
        name: "Cocktail Cherry",
        image: "Cocktail Cherry",
        color: Colors.red,
        strength: 0,
        origin: nil,
        description: "A Cocktail Cherry is a Cherry that has been marinating in a sugar marinade."
    )
    static let coconutCream: Ingredient = Ingredient(
        name: "Coconut Cream",
        image: "Coconut Cream",
        color: Colors.white,
        strength: 0,
        origin: nil,
        description: ""
    )
    static let coffee: Ingredient = Ingredient(
        name: "Coffee",
        image: "Coffee",
        color: Colors.brown,
        strength: 0,
        origin: nil,
        description: ""
    )
    static let coffeeLiqueur: Ingredient = Ingredient(
        name: "Coffee Liqueur",
        image: "Coffee Liqueur",
        color: Colors.brown,
        strength: 20,
        origin: nil,
        description: "A Liqueur based on coffee with varying degrees of sweetness",
        tags: [.spirit]
    )
    static let cognac: Ingredient = Ingredient(
        name: "Cognac",
        image: "Cognac",
        color: Colors.brown,
        strength: 40,
        origin: nil,
        description: """
Cognac is a double distilled wine, based on Ugni Blanc, Folle Blanche, & Colombard grapes that are aged in oak barrels. Like Champagne, Cognac is exclusively produced in France in the Cognac region.
""",
        tags: [.base, .spirit]
    )
    static let cointreau: Ingredient = Ingredient(
        name: "Cointreau",
        image: "Cointreau",
        color: Colors.orange,
        strength: 40,
        origin: nil,
        description: """
A type/brand of tripple sec (Orange liqueur) produced in Saint-Barthèlemy-d'Anjou, France. Both enjoyed as a apèritif and digestif.
""",
        tags: [.spirit]
    )
    static let cola: Ingredient = Ingredient(
        name: "Cola",
        image: "Cola",
        color: Colors.black,
        strength: 0,
        origin: nil,
        description: "The most popular carbonated soft drinks in the world."
    )
    static let cucumber: Ingredient = Ingredient(
        name: "Cucumber",
        image: "Cucumber",
        color: Colors.green,
        strength: 0,
        origin: nil,
        description: ""
    )
    static let curacao: Ingredient = Ingredient(
        name: "Curacao",
        image: "Curacao",
        color: Colors.orange,
        strength: 40,
        origin: nil,
        description: "",
        tags: [.base, .spirit]
    )
    static let cream: Ingredient = Ingredient(
        name: "Cream",
        image: "Cream",
        color: Colors.white,
        strength: 0,
        origin: nil,
        description: "A dairy product containing anywhere from 18-30% fat, but varies from country to country."
    )
    static let darkRum: Ingredient = Ingredient(
        name: "Dark Rum",
        image: "Dark Rum",
        color: Colors.brown,
        strength: 40,
        origin: nil,
        description: """
Dark Rum are the distilled product of sugar canes (though not exclusively sugar canes), aged for 2- or more years in oak barrels.
""",
        tags: [.spirit]
    )
    static let demeraraSirup: Ingredient = Ingredient(
        name: "Demerara Sirup",
        image: "Demerara Sirup",
        color: Colors.brown,
        strength: 0,
        origin: nil,
        description: """
Made up of 2 parts demerara sugar to 1 part water. Warmed up in a saucepan, on medium heat, constantly stirring until all the sugar has been dissolved. In contrast to a Simple Sirup, demerara Sirup has a deeper, darker, caramel-like flavor.
""",
        tags: [.base]
    )
    static let drambuie: Ingredient = Ingredient(
        name: "Drambuie",
        image: "Drambuie",
        color: Colors.red,
        strength: 40,
        origin: nil,
        description: "A Scotch based liqueur, made with honey, spices, & a variety of herbs.",
        tags: [.spirit]
    )
    static let dryVermouth: Ingredient = Ingredient(
        name: "Dry Vermouth",
        image: "Dry Vermouth",
        color: Colors.green,
        strength: 18,
        origin: nil,
        description: "Vermouth is a fortified wine flavored with spices, herbs, and bark.",
        tags: [.base, .spirit]
    )
    static let eggWhite: Ingredient = Ingredient(
        name: "Egg White",
        image: "Egg White",
        color: Colors.white,
        strength: 0,
        origin: nil,
        description: "The non-yolk part of the egg.",
        tags: [.base]
    )
    static let gin: Ingredient = Ingredient(
        name: "Gin",
        image: "Gin",
        color: Colors.white,
        strength: 40,
        origin: Origin.worldwide,
        description: """
A high proof distilled product of neutral spirits with botanicals, which always includes juniper, but can contain other botanicals, like: orange- & lemon peel, coriander, anise, & more.
There are generally considered to be five variations for gin: London Dry, Old Tom, Plymouth, New Style, & Genever.
""",
        tags: [.base, .spirit]
    )
    static let gingerBeer: Ingredient = Ingredient(
        name: "Ginger Beer",
        image: "Ginger Beer",
        color: Colors.white,
        strength: 0,
        origin: nil,
        description: "A soft drink, where the major ingredient is ginger."
    )
    static let goldRum: Ingredient = Ingredient(
        name: "Gold Rum",
        image: "Gold Rum",
        color: Colors.yellow,
        strength: 40,
        origin: nil,
        description: "",
        tags: [.spirit]
    )
    static let ginger: Ingredient = Ingredient(
        name: "Ginger",
        image: "Ginger",
        color: Colors.brown,
        strength: 0,
        origin: nil,
        description: ""
    )
    static let grandMarnier: Ingredient = Ingredient(
        name: "Grand Marnier",
        image: "Grand Marnier",
        color: Colors.orange,
        strength: 40,
        origin: nil,
        description: "A orange liqueur with a base of Cognac.",
        tags: [.spirit]
    )
    static let honeySirup: Ingredient = Ingredient(
        name: "Honey Sirup",
        image: "Honey Sirup",
        color: Colors.yellow,
        strength: 0,
        origin: nil,
        description: "A honey based sirup, made up of 3 parts honey to 1 part water."
    )
    static let ice: Ingredient = Ingredient(
        name: "Ice",
        image: "Ice",
        color: Colors.white,
        strength: 0,
        origin: nil,
        description: "",
        tags: [.base]
    )
    static let irishWhisky: Ingredient = Ingredient(
        name: "Irish Whisky",
        image: "Irish Whisky",
        color: Colors.green,
        strength: 40,
        origin: Origin.ireland,
        description: """
Once the most popular spirit in the world, going from over 30 distilleries to only 3 by the later 1900s. Though Irish Whisky has seen a boost in popularity in later years, and are on pace to become a highly popular spirit again.
""",
        alternatives: [Ingredient.whisky],
        tags: [.spirit]
    )
    static let islayWhisky: Ingredient = Ingredient(
        name: "Islay Whisky",
        image: "Islay Whisky",
        color: Colors.green,
        strength: 40,
        origin: Origin.scotland,
        description: """
A often times more peaty version of a Scotch Whisky, originating from the Island of Islay.
""",
        alternatives: [Ingredient.scotchWhisky, Ingredient.whisky],
        tags: [.spirit]
    )
    static let kahlua: Ingredient = Ingredient(
        name: "Kahlua",
        image: "Kahlua",
        color: Colors.yellow,
        strength: 20,
        origin: Origin.mexico,
        description: """
A coffee liqueur from Mexico.
""",
        tags: [.spirit]
    )
    static let kinaLaeroDor: Ingredient = Ingredient(
        name: "Kina l'aero d'or",
        image: "Kina l'aero d'or",
        color: Colors.yellow,
        strength: 20,
        origin: nil,
        description: "",
        tags: [.spirit]
    )
    static let lemon: Ingredient = Ingredient(
        name: "Lemon",
        image: "Lemon",
        color: Colors.yellow,
        strength: 0,
        origin: nil,
        description: "",
        tags: [.base]
    )
    static let lemonJuice: Ingredient = Ingredient(
        name: "Lemon Juice",
        image: "Lemon Juice",
        color: Colors.yellow,
        strength: 0,
        origin: nil,
        description: "",
        tags: [.base]
    )
    static let lemonTwist: Ingredient = Ingredient(
        name: "Lemon Twist",
        image: "Lemon Twist",
        color: Colors.yellow,
        strength: 0,
        origin: nil,
        description: ""
    )
    static let lilletBlanc: Ingredient = Ingredient(
        name: "Lillet Blanc",
        image: "Lillet Blanc",
        color: Colors.yellow,
        strength: 17,
        origin: nil,
        description: "",
        tags: [.spirit]
    )
    static let lightRum: Ingredient = Ingredient(
        name: "Light Rum",
        image: "Light Rum",
        color: Colors.white,
        strength: 40,
        origin: nil,
        description: "",
        tags: [.spirit]
    )
    static let lime: Ingredient = Ingredient(
        name: "Lime",
        image: "Lime",
        color: Colors.green,
        strength: 0,
        origin: nil,
        description: "",
        tags: [.base]
    )
    static let limeJuice: Ingredient = Ingredient(
        name: "Lime Juice",
        image: "Lime Juice",
        color: Colors.green,
        strength: 0,
        origin: nil,
        description: "",
        tags: [.base]
    )
    static let mintLeaves: Ingredient = Ingredient(
        name: "Mint Leaves",
        image: "Mint Leaves",
        color: Colors.green,
        strength: 0,
        origin: nil,
        description: "",
        tags: [.base]
    )
    static let oliveBrine: Ingredient = Ingredient(
        name: "Olive Brine",
        image: "Olives",
        color: Colors.brown,
        strength: 0,
        origin: nil,
        description: ""
    )
    static let olives: Ingredient = Ingredient(
        name: "Olives",
        image: "Olives",
        color: Colors.brown,
        strength: 0,
        origin: nil,
        description: ""
    )
    static let orangeJuice: Ingredient = Ingredient(
        name: "Orange Juice",
        image: "Orange",
        color: Colors.orange,
        strength: 0,
        origin: nil,
        description: """
A freshly squeezed juice, usually sweet, used in a variety of different drinks.
""",
        tags: [.base]
    )
    static let orange: Ingredient = Ingredient(
        name: "Orange",
        image: "Orange",
        color: Colors.orange,
        strength: 0,
        origin: nil,
        description: "",
        tags: [.base]
    )
    static let orgeatSirup: Ingredient = Ingredient(
        name: "Orgeat Sirup",
        image: "Orgeat Sirup",
        color: Colors.gray,
        strength: 0,
        origin: nil,
        description: ""
    )
    static let peychaudBitters: Ingredient = Ingredient(
        name: "Peychaud Bitters",
        image: "Peychaud Bitters",
        color: Colors.red,
        strength: 35,
        origin: nil,
        description: """
Originally created between 1849 and 1857 by Antoine Amèdèe Peychaud, often compared to Angostura Bitters, though Peychaud Bitters are of the sweeter variant in the Bitters category. Its most popularly used in the drink: Sazerac.
""",
        tags: [.spirit]
    )
    static let pineapple: Ingredient = Ingredient(
        name: "Pineapple",
        image: "Pineapple",
        color: Colors.yellow,
        strength: 0,
        origin: nil,
        description: "",
        tags: [.base]
    )
    static let pineappleJuice: Ingredient = Ingredient(
        name: "Pineapple Juice",
        image: "Pineapple",
        color: Colors.yellow,
        strength: 0,
        origin: nil,
        description: "",
        tags: [.base]
    )
    static let redWine: Ingredient = Ingredient(
        name: "Red Wine",
        image: "Red Wine",
        color: Colors.red,
        strength: 14,
        origin: nil,
        description: """
A wine made from a dark-colored grape. The color can range from intense violet, to a dark red (near brown for older wines) color.
""",
        tags: [.spirit]
    )
    static let roseWater: Ingredient = Ingredient(
        name: "Rose Water",
        image: "Rose Water",
        color: Colors.red,
        strength: 5,
        origin: nil,
        description: "",
        tags: [.spirit]
    )
    static let rum: Ingredient = Ingredient(
        name: "Rum",
        image: "Rum",
        color: Colors.brown,
        strength: 40,
        origin: nil,
        description: """
A spirit made from distilled sugarcane molasses or sugarcane juice, and then aged in oak barrels.
""",
        tags: [.base, .spirit]
    )
    static let ryeWhisky: Ingredient = Ingredient(
        name: "Rye Whisky",
        image: "Rye Whisky",
        color: Colors.brown,
        strength: 40,
        origin: Origin.unitedStates,
        description: """
A type of whisky made from at least 51% rye, and should be aged in charred new-oak-barrels for at least 2 years.
""",
        alternatives: [Ingredient.whisky],
        tags: [.spirit]
    )
    static let scotchWhisky: Ingredient = Ingredient(
        name: "Scotch Whisky",
        image: "Scotch Whisky",
        color: Colors.brown,
        strength: 40,
        origin: Origin.scotland,
        description: """
Scotch Whisky is divided up into 5 distinct categories: single malt, single grain, blended malt, blended grain, and blended Scotch Whisky.
All Scotch Whisky must be made in oak barrels for at least 3 years.
""",
        alternatives: [Ingredient.whisky],
        tags: [.spirit]
    )
    static let simpleSirup: Ingredient = Ingredient(
        name: "Simple Sirup",
        image: "Simple Sirup",
        color: Colors.white,
        strength: 0,
        origin: nil,
        description: "Made from 2 parts fine sugar and 1 part water (preferably by weight), heat the mixture on a saucepan on medium heat, until sugar is dissolved.",
        tags: [.base]
    )
    static let sodaWater: Ingredient = Ingredient(
        name: "Soda Water",
        image: "Soda Water",
        color: Colors.white,
        strength: 0,
        origin: nil,
        description: "Carbonated water",
        tags: [.base]
    )
    static let sugar: Ingredient = Ingredient(
        name: "Sugar",
        image: "Sugar",
        color: Colors.white,
        strength: 0,
        origin: nil,
        description: "",
        tags: [.base]
    )
    static let suze: Ingredient = Ingredient(
        name: "Suze",
        image: "Suze",
        color: Colors.yellow,
        strength: 20,
        origin: nil,
        description: "",
        tags: [.spirit]
    )
    static let sweetVermouth: Ingredient = Ingredient(
        name: "Sweet Vermouth",
        image: "Sweet Vermouth",
        color: Colors.red,
        strength: 18,
        origin: Origin.italy,
        description: """
Vermouth is a fortified wine flavored with various herbs, barks, & spices.
""",
        tags: [.base, .spirit]
    )
    static let tequila: Ingredient = Ingredient(
        name: "Tequila",
        image: "Tequila",
        color: Colors.white,
        strength: 45,
        origin: nil,
        description: """
Tequila is produced from agave. When shopping for Tequila go for Tequila made with 100% agave.
""",
        tags: [.base, .spirit]
    )
    static let vodka: Ingredient = Ingredient(
        name: "Vodka",
        image: "Vodka",
        color: Colors.white,
        strength: 40,
        origin: Origin.poland,
        description: """
Vodka is primarly made from grains and/or potatos, but also other items such as: barley, grapes, or corn.
""",
        tags: [.base, .spirit]
    )
    static let whisky: Ingredient = Ingredient(
        name: "Whisky",
        image: "Whisky",
        color: Colors.brown,
        strength: 40,
        origin: Origin.worldwide,
        description: """
Whisky is made from fermented mash containing various grains, including: barley, rye, corn, and wheat.
""",
        tags: [.base, .spirit]
    )
    
    static let all: [Ingredient] = [
        absinthe,
        amaretto,
        amaro,
        angosturaBitters,
        angosturaOrangeBitters,
        aperol,
        apricotLiqueur,
        bourbonWhisky,
        campari,
        calvados,
        champagne,
        cremeDeCasis,
        cocktailCherry,
        coconutCream,
        coffee,
        coffeeLiqueur,
        cognac,
        cointreau,
        cola,
        cucumber,
        curacao,
        cream,
        darkRum,
        demeraraSirup,
        drambuie,
        dryVermouth,
        eggWhite,
        gin,
        gingerBeer,
        goldRum,
        ginger,
        grandMarnier,
        honeySirup,
        ice,
        irishWhisky,
        kahlua,
        kinaLaeroDor,
        lemon,
        lemonJuice,
        lemonTwist,
        lilletBlanc,
        lightRum,
        lime,
        limeJuice,
        mintLeaves,
        oliveBrine,
        olives,
        orangeJuice,
        orange,
        orgeatSirup,
        peychaudBitters,
        pineappleJuice,
        pineapple,
        redWine,
        rum,
        ryeWhisky,
        scotchWhisky,
        simpleSirup,
        sodaWater,
        sugar,
        suze,
        sweetVermouth,
        tequila,
        vodka,
        whisky,
    ]

}
