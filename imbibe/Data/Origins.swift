//
//  Origins.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import Foundation

final class Origins {
    static let worldwide: Origin = Origin( name: "Worldwide", flag: "🌎" )
    static let caribbean: Origin = Origin( name: "Caribbean", flag: "🏝️" )
    
    static let belgium: Origin = Origin( name: "Belgium", flag: "🇧🇪" )
    static let bermuda: Origin = Origin( name: "Bermuda", flag: "🇧🇲" )
    static let britishVirginIslands: Origin = Origin( name: "British Virgin Islands", flag: "🇻🇬" )
    static let cuba: Origin = Origin( name: "Cuba", flag: "🇨🇺" )
    static let france: Origin = Origin( name: "France", flag: "🇫🇷" )
    static let germany: Origin = Origin( name: "Germany", flag: "🇩🇪" )
    static let ireland: Origin = Origin( name: "Ireland", flag: "🇮🇪" )
    static let italy: Origin = Origin( name: "Italy", flag: "🇮🇹" )
    static let mexico: Origin = Origin( name: "Mexico", flag: "🇲🇽" )
    static let poland: Origin = Origin( name: "Poland", flag: "🇵🇱" )
    static let puertoRico: Origin = Origin( name: "Puerto Rico", flag: "🇵🇷" )
    static let scotland: Origin = Origin( name: "Scotland", flag: "🏴󠁧󠁢󠁳󠁣󠁴󠁿" )
    static let trinidadAndTobago: Origin = Origin( name: "Trinidad and Tobago", flag: "🇹🇹" )
    static let unitedKingdom: Origin = Origin( name: "United Kingdom", flag: "🇬🇧" )
    static let unitedStates: Origin = Origin( name: "United States", flag: "🇺🇸" )
    
    static let all: [Origin] = [
        worldwide,
        caribbean,
        
        belgium,
        bermuda,
        britishVirginIslands,
        cuba,
        france,
        germany,
        ireland,
        italy,
        mexico,
        poland,
        puertoRico,
        scotland,
        trinidadAndTobago,
        unitedKingdom,
        unitedStates,
    ]
}
