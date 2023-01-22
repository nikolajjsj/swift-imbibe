//
//  AppState.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var tab: Tab = .discover
    
    @Published var discoverPath: [Route] = []
    @Published var drinksPath: [Route] = []
    @Published var ingredientsPath: [Route] = []
    @Published var barPath: [Route] = []
}

enum Tab: Hashable {
    case discover, drinks, ingredients, bar, settings
}

enum Route: Hashable {}
