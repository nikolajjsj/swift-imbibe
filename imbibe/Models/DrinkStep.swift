//
//  DrinkStep.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import Foundation

class DrinkStep: Identifiable, Hashable {
    static func == (lhs: DrinkStep, rhs: DrinkStep) -> Bool {
        lhs.string == rhs.string
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(string)
    }
    
    let id: UUID
    let string: String
    
    init(id: UUID = UUID(), string: String) {
        self.id = id
        self.string = string
    }
}
