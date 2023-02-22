//
//  Origin.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import Foundation

final class Origin: Identifiable, Hashable {
    static func == (lhs: Origin, rhs: Origin) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let flag: String
    
    init(id: UUID = UUID(), name: String, flag: String) {
        self.id = id
        self.name = name
        self.flag = flag
    }
}

final class Origins {
    static let instance = Origins()
    private init() { }
    
    let worldwide: Origin = Origin( name: "Worldwide", flag: "🌎" )
    let caribbean: Origin = Origin( name: "Caribbean", flag: "🏝️" )
    
    let belgium: Origin = Origin( name: "Belgium", flag: "🇧🇪" )
    let bermuda: Origin = Origin( name: "Bermuda", flag: "🇧🇲" )
    let brazil: Origin = Origin( name: "Brazil", flag: "🇧🇷" )
    let britishVirginIslands: Origin = Origin( name: "British Virgin Islands", flag: "🇻🇬" )
    let cuba: Origin = Origin( name: "Cuba", flag: "🇨🇺" )
    let france: Origin = Origin( name: "France", flag: "🇫🇷" )
    let germany: Origin = Origin( name: "Germany", flag: "🇩🇪" )
    let ireland: Origin = Origin( name: "Ireland", flag: "🇮🇪" )
    let italy: Origin = Origin( name: "Italy", flag: "🇮🇹" )
    let mexico: Origin = Origin( name: "Mexico", flag: "🇲🇽" )
    let peru: Origin = Origin( name: "Peru", flag: "🇵🇪" )
    let poland: Origin = Origin( name: "Poland", flag: "🇵🇱" )
    let puertoRico: Origin = Origin( name: "Puerto Rico", flag: "🇵🇷" )
    let scotland: Origin = Origin( name: "Scotland", flag: "🏴󠁧󠁢󠁳󠁣󠁴󠁿" )
    let singapore: Origin = Origin( name: "Singapore", flag: "🇸🇬" )
    let trinidadAndTobago: Origin = Origin( name: "Trinidad and Tobago", flag: "🇹🇹" )
    let unitedKingdom: Origin = Origin( name: "United Kingdom", flag: "🇬🇧" )
    let unitedStates: Origin = Origin( name: "United States", flag: "🇺🇸" )
    
    var all: [Origin] {
        [
            worldwide,
            caribbean,
            
            belgium,
            bermuda,
            brazil,
            britishVirginIslands,
            cuba,
            france,
            germany,
            ireland,
            italy,
            mexico,
            peru,
            poland,
            puertoRico,
            scotland,
            singapore,
            trinidadAndTobago,
            unitedKingdom,
            unitedStates,
        ]
    }
}
