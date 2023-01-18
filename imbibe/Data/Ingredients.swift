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
        image: "Absinthe",
        color: "5A915CCC",
        strength: 60,
        origin: nil,
        description: """
An anise-flavored spirit, that contains a high level of alcohol. Absinthe is derived from botanicals, including the leaves & flowers of wormwood, and is usually mixed together with anise, fennel, and other culinary herbs.
Many misconceptions about absinthe, has arised through the years. One especially is that absinthe is a hallucinogen, causing the drinker to see all sorts of stuff that isn't real. This misconception is caused by absinthe containing the compound: "thujone", even though absinthe only contains a minute amount of it. This caused absinthe to be banned from most of Europe and the United States by 1915, though it later was legal again, though first in 2007 in the case of the United States.
"""
    )
    static let amaretto: Ingredient = Ingredient(
        name: "Amaretto",
        image: "Amaretto",
        color: "8C573ACD",
        strength: 28,
        origin: nil,
        description: """
Originating from Italy, with flavors of almonds, apricot-pits, peach-pits, which all gives out an almond-like flavor which Amaretto is known for.
"""
    )
    static let angosturaBitters: Ingredient = Ingredient(
        name: "Angostura Bitters",
        image: "Angostura Bitters",
        color: "959590C4",
        strength: 44,
        origin: Origins.trinidadAndTobago,
        description: """
Angostura makes the most famous and widely used type of herbal Bitters. Angostura Bitters was created by a German surgeon from Simòn Bolìvars army (Venezuela) to treat stomach disorders and indegestion. But in its later years it has been proved a great addition to a lot of drinks.
"""
    )
    static let angosturaOrangeBitters: Ingredient = Ingredient(
        name: "Angostura Orange Bitters",
        image: "Angostura Orange Bitters",
        color: "AC7046D4",
        strength: 28,
        origin: nil,
        description: "The Orange version of the famous Angostura Bitters."
    )
    static let aperol: Ingredient = Ingredient(
        name: "Aperol",
        image: "Aperol",
        color: "894E46B5",
        strength: 11,
        origin: nil,
        description: """
"""
    )
    static let bourbonWhisky: Ingredient = Ingredient(
        name: "Bourbon Whisky",
        image: "Bourbon Whisky",
        color: "78432AB2",
        strength: 40,
        origin: Origins.unitedStates,
        description: """
A type of Whisky that typically has a rich & sweet taste, made of at least 51% corn aged in new-oak barrels. Bourbon has to be made in the United States to be able to call itself a Bourbon Whisky.
""",
        alternatives: [whisky, irishWhisky, ryeWhisky, scotchWhisky, bourbonWhisky]
    )
    static let campari: Ingredient = Ingredient(
        name: "Campari",
        image: "Campari",
        color: "7F413CC0",
        strength: 25,
        origin: Origins.italy,
        description: """
Created by Gaspare Campari and with a very bittersweet taste, usually used as a aperitif (before dinner). Campari is flavored with 68 different herbs & spices, and was made in the years between 1860 to 1867 in Milan.
"""
    )
    static let calvados: Ingredient = Ingredient(
        name: "Calvados",
        image: "Calvados",
        color: "6C492CA7",
        strength: 40,
        origin: nil,
        description: """
Calvados is a type of apple brandy, made from a variety of different types of apples, in the northern region of France (Normandy). Calvados is distilled from the fermented product of a dry apple cider, with a minimum aging time of 2 years in oak barrels, but can be aged for longer.
"""
    )
    static let champagne: Ingredient = Ingredient(
        name: "Champagne",
        image: "Champagne",
        color: "49422DB0",
        strength: 12,
        origin: nil,
        description: """
Champagne has been used for a variety of different sparkling wines, though many are actually not a "true" Champagne. To be called a Champagne to wine has to be made from grapes grown in the Champagne region of France.
"""
    )
    static let coconutCream: Ingredient = Ingredient(
        name: "Coconut Cream",
        image: "Coconut Cream",
        color: "6C492CA7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let coffee: Ingredient = Ingredient(
        name: "Coffee",
        image: "Coffee",
        color: "6C492CA7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let coffeeLiqueur: Ingredient = Ingredient(
        name: "Coffee Liqueur",
        image: "Coffee Liqueur",
        color: "6C492CA7",
        strength: 20,
        origin: nil,
        description: "A Liqueur based on coffee with varying degrees of sweetness",
        alternatives: [kahlua]
    )
    static let cognac: Ingredient = Ingredient(
        name: "Cognac",
        image: "Cognac",
        color: "8C573ACD",
        strength: 40,
        origin: nil,
        description: """
Cognac is a double distilled wine, based on Ugni Blanc, Folle Blanche, & Colombard grapes that are aged in oak barrels. Like Champagne, Cognac is exclusively produced in France in the Cognac region.
"""
    )
    static let cointreau: Ingredient = Ingredient(
        name: "Cointreau",
        image: "Cointreau",
        color: "935B34C1",
        strength: 40,
        origin: nil,
        description: """
A type/brand of tripple sec (Orange liqueur) produced in Saint-Barthèlemy-d'Anjou, France. Both enjoyed as a apèritif and digestif.
""",
        alternatives: [curacao, grandMarnier]
    )
    static let cola: Ingredient = Ingredient(
        name: "Cola",
        image: "Cola",
        color: "633B38C5",
        strength: 0,
        origin: nil,
        description: "The most popular carbonated soft drinks in the world."
    )
    static let curacao: Ingredient = Ingredient(
        name: "Curacao",
        image: "Curacao",
        color: "60312997",
        strength: 40,
        origin: nil,
        description: "",
        alternatives: [grandMarnier, cointreau]
    )
    static let cream: Ingredient = Ingredient(
        name: "Cream",
        image: "Cream",
        color: "5402E2757",
        strength: 0,
        origin: nil,
        description: "A dairy product containing anywhere from 18-30% fat, but varies from country to country."
    )
    static let darkRum: Ingredient = Ingredient(
        name: "Dark Rum",
        image: "Dark Rum",
        color: "54392BBF",
        strength: 40,
        origin: nil,
        description: """
Dark Rum are the distilled product of sugar canes (though not exclusively sugar canes), aged for 2- or more years in oak barrels.
"""
    )
    static let demeraraSirup: Ingredient = Ingredient(
        name: "Demerara Sirup",
        image: "Demerara Sirup",
        color: "4A3735D0",
        strength: 0,
        origin: nil,
        description: """
Made up of 2 parts demerara sugar to 1 part water. Warmed up in a saucepan, on medium heat, constantly stirring until all the sugar has been dissolved. In contrast to a Simple Sirup, demerara Sirup has a deeper, darker, caramel-like flavor.
"""
    )
    static let drambuie: Ingredient = Ingredient(
        name: "Drambuie",
        image: "Drambuie",
        color: "54392BBF",
        strength: 40,
        origin: nil,
        description: """
A Scotch based liqueur, made with honey, spices, & a variety of herbs.
"""
    )
    static let dryVermouth: Ingredient = Ingredient(
        name: "Dry Vermouth",
        image: "Dry Vermouth",
        color: "83935DCD",
        strength: 18,
        origin: nil,
        description: """
Vermouth is a fortified wine flavored with spices, herbs, and bark.
"""
    )
    static let eggWhite: Ingredient = Ingredient(
        name: "Egg White",
        image: "Egg White",
        color: "6C5632C8",
        strength: 0,
        origin: nil,
        description: """
The non-yolk part of the egg.
"""
    )
    static let gin: Ingredient = Ingredient(
        name: "Gin",
        image: "Gin",
        color: "3C3D3CD5",
        strength: 40,
        origin: Origins.worldwide,
        description: """
A high proof distilled product of neutral spirits with botanicals, which always includes juniper, but can contain other botanicals, like: orange- & lemon peel, coriander, anise, & more.
There are generally considered to be five variations for gin: London Dry, Old Tom, Plymouth, New Style, & Genever.
"""
    )
    static let gingerBeer: Ingredient = Ingredient(
        name: "Ginger Beer",
        image: "Ginger Beer",
        color: "97988EC5",
        strength: 0,
        origin: nil,
        description: """
A soft drink, where the major ingredient is ginger.
"""
    )
    static let grandMarnier: Ingredient = Ingredient(
        name: "Grand Marnier",
        image: "Grand Marnier",
        color: "60312997",
        strength: 40,
        origin: nil,
        description: """
A orange liqueur with a base of Cognac.
""",
        alternatives: [curacao, cointreau]
    )
    static let ice: Ingredient = Ingredient(
        name: "Ice",
        image: "Ice",
        color: "3F404392",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let iceCrushed: Ingredient = Ingredient(
        name: "Ice Crushed",
        image: "Ice Crushed",
        color: "3F4E53B7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let iceCubes: Ingredient = Ingredient(
        name: "Ice Cubes",
        image: "Ice Cubes",
        color: "3F4E53B7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let irishWhisky: Ingredient = Ingredient(
        name: "Irish Whisky",
        image: "Irish Whisky",
        color: "62654BC6",
        strength: 40,
        origin: Origins.ireland,
        description: """
Once the most popular spirit in the world, going from over 30 distilleries to only 3 by the later 1900s. Though Irish Whisky has seen a boost in popularity in later years, and are on pace to become a highly popular spirit again.
""",
        alternatives: [whisky, ryeWhisky, scotchWhisky, bourbonWhisky]
    )
    static let kahlua: Ingredient = Ingredient(
        name: "Kahlua",
        image: "Kahlua",
        color: "6C5632C8",
        strength: 20,
        origin: Origins.mexico,
        description: """
A coffee liqueur from Mexico.
"""
    )
    static let kinaLaeroDor: Ingredient = Ingredient(
        name: "Kina l'aero d'or",
        image: "Kina l'aero d'or",
        color: "675210B7",
        strength: 20,
        origin: nil,
        description: ""
    )
    static let lemon: Ingredient = Ingredient(
        name: "Lemon",
        image: "Lemon",
        color: "675210B7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let lemonJuice: Ingredient = Ingredient(
        name: "Lemon Juice",
        image: "Lemon Juice",
        color: "675210B7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let lemonTwist: Ingredient = Ingredient(
        name: "Lemon Twist",
        image: "Lemon Twist",
        color: "675210B7",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let lightRum: Ingredient = Ingredient(
        name: "Light Rum",
        image: "Light Rum",
        color: "A0A39BC7",
        strength: 40,
        origin: nil,
        description: ""
    )
    static let lime: Ingredient = Ingredient(
        name: "Lime",
        image: "Lime",
        color: "496311BD",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let limeJuice: Ingredient = Ingredient(
        name: "Lime Juice",
        image: "Lime Juice",
        color: "496311BD",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let mintLeaves: Ingredient = Ingredient(
        name: "Mint Leaves",
        image: "Mint Leaves",
        color: "3F68229D",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let oliveBrine: Ingredient = Ingredient(
        name: "Olive Brine",
        image: "Olives",
        color: "5A915CCC",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let olives: Ingredient = Ingredient(
        name: "Olives",
        image: "Olives",
        color: "5A915CCC",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let orangeJuice: Ingredient = Ingredient(
        name: "Orange Juice",
        image: "Orange",
        color: "AC7046D4",
        strength: 0,
        origin: nil,
        description: """
A freshly squeezed juice, usually sweet, used in a variety of different drinks.
"""
    )
    static let orange: Ingredient = Ingredient(
        name: "Orange",
        image: "Orange",
        color: "AC7046D4",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let peychaudBitters: Ingredient = Ingredient(
        name: "Peychaud Bitters",
        image: "Peychaud Bitters",
        color: "755D5ACE",
        strength: 35,
        origin: nil,
        description: """
Originally created between 1849 and 1857 by Antoine Amèdèe Peychaud, often compared to Angostura Bitters, though Peychaud Bitters are of the sweeter variant in the Bitters category. Its most popularly used in the drink: Sazerac.
"""
    )
    static let pineapple: Ingredient = Ingredient(
        name: "Pineapple",
        image: "Pineapple",
        color: "755D5ACE",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let pineappleJuice: Ingredient = Ingredient(
        name: "Pineapple Juice",
        image: "Pineapple",
        color: "755D5ACE",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let redWine: Ingredient = Ingredient(
        name: "Red Wine",
        image: "Red Wine",
        color: "755D5ACE",
        strength: 14,
        origin: nil,
        description: """
A wine made from a dark-colored grape. The color can range from intense violet, to a dark red (near brown for older wines) color.
"""
    )
    static let rum: Ingredient = Ingredient(
        name: "Rum",
        image: "Rum",
        color: "615752BF",
        strength: 40,
        origin: nil,
        description: """
A spirit made from distilled sugarcane molasses or sugarcane juice, and then aged in oak barrels.
"""
    )
    static let ryeWhisky: Ingredient = Ingredient(
        name: "Rye Whisky",
        image: "Rye Whisky",
        color: "774B21CC",
        strength: 40,
        origin: Origins.unitedStates,
        description: """
A type of whisky made from at least 51% rye, and should be aged in charred new-oak-barrels for at least 2 years.
""",
        alternatives: [whisky, irishWhisky, scotchWhisky, bourbonWhisky]
    )
    static let scotchWhisky: Ingredient = Ingredient(
        name: "Scotch Whisky",
        image: "Scotch Whisky",
        color: "774B21CC",
        strength: 40,
        origin: Origins.scotland,
        description: """
Scotch Whisky is divided up into 5 distinct categories: single malt, single grain, blended malt, blended grain, and blended Scotch Whisky.
All Scotch Whisky must be made in oak barrels for at least 3 years.
""",
        alternatives: [whisky, irishWhisky, ryeWhisky, bourbonWhisky]
    )
    static let simpleSirup: Ingredient = Ingredient(
        name: "Simple Sirup",
        image: "Simple Sirup",
        color: "8F8D8AAD",
        strength: 0,
        origin: nil,
        description: "Made from 2 parts fine sugar and 1 part water (preferably by weight), heat the mixture on a saucepan on medium heat, until sugar is dissolved."
    )
    static let sodaWater: Ingredient = Ingredient(
        name: "Soda Water",
        image: "Soda Water",
        color: "A3A49ECA",
        strength: 0,
        origin: nil,
        description: ""
    )
    static let sweetVermouth: Ingredient = Ingredient(
        name: "Sweet Vermouth",
        image: "Sweet Vermouth",
        color: "5F4F4AC5",
        strength: 18,
        origin: Origins.italy,
        description: """
Vermouth is a fortified wine flavored with various herbs, barks, & spices.
"""
    )
    static let tequila: Ingredient = Ingredient(
        name: "Tequila",
        image: "Tequila",
        color: "84827AA6",
        strength: 45,
        origin: nil,
        description: """
Tequila is produced from agave. When shopping for Tequila go for Tequila made with 100% agave.
"""
    )
    static let vodka: Ingredient = Ingredient(
        name: "Vodka",
        image: "Vodka",
        color: "A0A4AAD4",
        strength: 40,
        origin: Origins.poland,
        description: """
Vodka is primarly made from grains and/or potatos, but also other items such as: barley, grapes, or corn.
"""
    )
    static let whisky: Ingredient = Ingredient(
        name: "Whisky",
        image: "Whisky",
        color: "894118BD",
        strength: 40,
        origin: Origins.worldwide,
        description: """
Whisky is made from fermented mash containing various grains, including: barley, rye, corn, and wheat.
""",
        alternatives: [scotchWhisky, irishWhisky, ryeWhisky, bourbonWhisky]
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
        coconutCream,
        coffee,
        coffeeLiqueur,
        cognac,
        cointreau,
        cola,
        curacao,
        cream,
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
        kinaLaeroDor,
        lemon,
        lemonJuice,
        lemonTwist,
        lightRum,
        lime,
        limeJuice,
        mintLeaves,
        oliveBrine,
        olives,
        peychaudBitters,
        pineappleJuice,
        pineapple,
        redWine,
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
