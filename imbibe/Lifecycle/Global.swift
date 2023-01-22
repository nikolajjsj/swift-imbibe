//
//  Global.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import Foundation

class Global: ObservableObject {
    // MARK: - Wrapped Properties
    @Published var tab: Tab = .discover
    
    @Published var discoverPath: [Route] = []
    @Published var drinksPath: [Route] = []
    @Published var ingredientsPath: [Route] = []
    @Published var barPath: [Route] = []
    
    // MARK: - Properties
    
    var currentTab: Tab {
        return tab
    }
}

enum Tab: Hashable {
    case discover, drinks, ingredients, bar, settings
}

enum Route: Hashable {}
