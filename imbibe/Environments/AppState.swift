//
//  AppState.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var tab: Tab = .drinks
    @Published var path: [Route] = []
}

enum Tab: Hashable {
    case discover, drinks, ingredients
}

enum Route: Hashable {
    case drink(Drink)
    case ingredient(Ingredient)
}
