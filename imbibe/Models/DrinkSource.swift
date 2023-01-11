//
//  DrinkSource.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import Foundation

class DrinkSource: Identifiable, Hashable {
    static func == (lhs: DrinkSource, rhs: DrinkSource) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let id: UUID
    let name: String
    let description: String
    let link: URL
    
    init(id: UUID = UUID(), name: String, description: String, link: URL) {
        self.id = id
        self.name = name
        self.description = description
        self.link = link
    }
}
