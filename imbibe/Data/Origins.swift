//
//  Origins.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

class Origins {
    static let worldwide: Origin = Origin( name: "Worldwide", flag: "🌎" )
    
    static let belgium: Origin = Origin( name: "Belgium", flag: "🇧🇪" )
    static let bermuda: Origin = Origin( name: "Bermuda", flag: "🇧🇲" )
    static let cuba: Origin = Origin( name: "Cuba", flag: "🇨🇺" )
    static let france: Origin = Origin( name: "France", flag: "🇫🇷" )
    static let italy: Origin = Origin( name: "Italy", flag: "🇮🇹" )
    static let poland: Origin = Origin( name: "Poland", flag: "🇵🇱" )
    static let trinidadAndTobago: Origin = Origin( name: "Trinidad and Tobago", flag: "🇹🇹" )
    static let unitedKingdom: Origin = Origin( name: "United Kingdom", flag: "🇬🇧" )
    static let unitedStates: Origin = Origin( name: "United States", flag: "🇺🇸" )
    
    static let all: [Origin] = [
        worldwide,
        
        belgium,
        italy,
        poland,
        trinidadAndTobago,
        unitedStates,
    ]
}
