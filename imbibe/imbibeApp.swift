//
//  imbibeApp.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI

@main
struct imbibeApp: App {
    @StateObject var appState = AppState()
    @StateObject var favoritesVM = FavoritesViewModel()
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            AppView()
                .environmentObject(appState)
                .environmentObject(favoritesVM)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
