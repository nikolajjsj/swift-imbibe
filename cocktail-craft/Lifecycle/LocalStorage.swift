//
//  UserDefaults.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 14/01/2023.
//

import Foundation

enum LocalStorageKeys: String {
    case unit = "default_volumetric_unit"
    
    case onboarded = "user_has_been_onboarded"
}

final class LocalStorage {
    static func set<T>(value: T, key: LocalStorageKeys) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    
    static func get<T>(type: T.Type, forKey: LocalStorageKeys) -> T? {
        let value = UserDefaults.standard.object(forKey: forKey.rawValue) as? T
        return value
    }
    
    static func remove(key: LocalStorageKeys) {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}
