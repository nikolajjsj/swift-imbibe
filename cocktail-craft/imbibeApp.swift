//
//  imbibeApp.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI

@main
struct imbibeApp: App {
    @StateObject private var global = Global()
    @StateObject private var store = TipStore()
    
    let persistenceController = PersistenceController.shared
    
    let equipments = Equipments.instance
    let origins = Origins.instance
    let ingredients = Ingredients.instance
    let drinks = Drinks.instance

    var body: some Scene {
        WindowGroup {
            AppView()
                .environmentObject(global)
                .environmentObject(store)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
