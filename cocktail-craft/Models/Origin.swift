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
    
    let worldwide: Origin = Origin( name: "Worldwide", flag: "đ" )
    let caribbean: Origin = Origin( name: "Caribbean", flag: "đď¸" )
    
    let belgium: Origin = Origin( name: "Belgium", flag: "đ§đŞ" )
    let bermuda: Origin = Origin( name: "Bermuda", flag: "đ§đ˛" )
    let brazil: Origin = Origin( name: "Brazil", flag: "đ§đˇ" )
    let britishVirginIslands: Origin = Origin( name: "British Virgin Islands", flag: "đťđŹ" )
    let cuba: Origin = Origin( name: "Cuba", flag: "đ¨đş" )
    let france: Origin = Origin( name: "France", flag: "đŤđˇ" )
    let germany: Origin = Origin( name: "Germany", flag: "đŠđŞ" )
    let ireland: Origin = Origin( name: "Ireland", flag: "đŽđŞ" )
    let italy: Origin = Origin( name: "Italy", flag: "đŽđš" )
    let jamaica: Origin = Origin(name: "Jamaica", flag: "đŻđ˛")
    let mexico: Origin = Origin( name: "Mexico", flag: "đ˛đ˝" )
    let peru: Origin = Origin( name: "Peru", flag: "đľđŞ" )
    let poland: Origin = Origin( name: "Poland", flag: "đľđą" )
    let puertoRico: Origin = Origin( name: "Puerto Rico", flag: "đľđˇ" )
    let scotland: Origin = Origin( name: "Scotland", flag: "đ´ó §ó ˘ó łó Łó ´ó ż" )
    let singapore: Origin = Origin( name: "Singapore", flag: "đ¸đŹ" )
    let trinidadAndTobago: Origin = Origin( name: "Trinidad and Tobago", flag: "đšđš" )
    let unitedKingdom: Origin = Origin( name: "United Kingdom", flag: "đŹđ§" )
    let unitedStates: Origin = Origin( name: "United States", flag: "đşđ¸" )
    
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
            jamaica,
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
