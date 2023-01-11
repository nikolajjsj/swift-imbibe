//
//  Origin.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import Foundation

class Origin: Identifiable, Hashable {
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
