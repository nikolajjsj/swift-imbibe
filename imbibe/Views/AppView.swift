//
//  AppView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct AppView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        TabView(selection: $appState.tab) {
            NavigationStack(path: $appState.discoverPath) {
                DiscoverView().navigationDestination(for: Route.self, destination: routeView)
            }
            .tabItem {
                Image(systemName: Icons.discover)
                Text("Discover")
            }
            .tag(Tab.discover)
            
            NavigationStack(path: $appState.drinksPath) {
                DrinksView().navigationDestination(for: Route.self, destination: routeView)
            }
            .tabItem {
                Image(systemName: Icons.drinks)
                Text("Drinks")
            }
            .tag(Tab.drinks)
            
            NavigationStack(path: $appState.ingredientsPath) {
                IngredientsView()
                    .navigationDestination(for: Route.self, destination: routeView)
            }
            .tabItem {
                Image(systemName: Icons.ingredients)
                Text("Ingredients")
            }
            .tag(Tab.ingredients)
            
            NavigationStack(path: $appState.barPath) {
                BarView()
                    .navigationDestination(for: Route.self, destination: routeView)
            }
            .tabItem {
                Image(systemName: Icons.bar)
                Text("Bar")
            }
            .tag(Tab.bar)
            
            SettingsView().tabItem {
                Image(systemName: Icons.settings)
                Text("Settings")
            }
            .tag(Tab.settings)
        }
    }
    
    @ViewBuilder
    func routeView(route: Route?) -> some View {
        switch route {
        default:
            Text("No selection")
                .font(.largeTitle.bold())
                .foregroundColor(.gray)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
            .environmentObject(AppState())
    }
}
