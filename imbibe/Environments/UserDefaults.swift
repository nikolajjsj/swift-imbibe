//
//  UserDefaults.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 14/01/2023.
//

import Foundation

enum UserDefaultKeys: String, CaseIterable {
    case unit = "default_unit"
    case drinkStrength = "default_drink_strength"
    case drinkEra = "default_drink_era"
}

final class UserDefaultsHelper {
    static func set<T>(value: T, key: UserDefaultKeys) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    
    static func get<T>(type: T.Type, forKey: UserDefaultKeys) -> T? {
        let value = UserDefaults.standard.object(forKey: forKey.rawValue) as? T
        return value
    }
    
    static func remove(key: UserDefaultKeys) {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}
