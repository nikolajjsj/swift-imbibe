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
    
    @Published private(set) var onboarded: Bool = LocalStorage.get(type: Bool.self, forKey: .onboarded) ?? false
    func toggleOnboarded() {
        self.onboarded.toggle()
        LocalStorage.set(value: self.onboarded, key: .onboarded)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: self.clearAllPaths)
    }
    
    private func clearAllPaths() {
        tab = .discover
        discoverPath.removeAll()
        drinksPath.removeAll()
        ingredientsPath.removeAll()
        barPath.removeAll()
    }
    
    
    // MARK: - Properties
    
    var currentTab: Tab { tab }
}

enum Tab: Hashable {
    case discover, drinks, ingredients, bar, settings
}

enum Route: Hashable {}
