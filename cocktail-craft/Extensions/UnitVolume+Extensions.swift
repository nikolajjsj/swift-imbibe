//
//  UnitVolume+Extensions.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 16/02/2023.
//

import Foundation

extension UnitVolume {
    static let dash = UnitVolume(symbol: "dash", converter: UnitConverterLinear(coefficient: 0.0006))
    static let drop = UnitVolume(symbol: "drop", converter: UnitConverterLinear(coefficient: 0.0000513429332689199))
    static let piece = UnitVolume(symbol: "piece")
    
    static func fromSymbol(_ symbol: String) -> UnitVolume? {
        usedUnitVolumeMetrics.first(where: { $0.symbol == symbol })
    }
}

let usedUnitVolumeMetrics: [UnitVolume] = [
    UnitVolume.milliliters,
    UnitVolume.centiliters,
    UnitVolume.fluidOunces,
    UnitVolume.teaspoons
]
