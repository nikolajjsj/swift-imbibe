//
//  AppView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct AppView: View {
    @EnvironmentObject var global: Global
    
    var body: some View {
        if !global.onboarded {
            OnboardingView()
        } else {
            Main()
        }
    }
    
    @ViewBuilder
    private func Main() -> some View {
        TabView(selection: $global.tab) {
            NavigationStack(path: $global.discoverPath) {
                DiscoverView().navigationDestination(for: Route.self, destination: routeView)
            }
            .tabItem {
                Image(systemName: Icons.discover)
                Text("Discover")
            }
            .tag(Tab.discover)
            
            NavigationStack(path: $global.drinksPath) {
                DrinksView().navigationDestination(for: Route.self, destination: routeView)
            }
            .tabItem {
                Image(systemName: Icons.drinks)
                Text("Drinks")
            }
            .tag(Tab.drinks)
            
            NavigationStack(path: $global.ingredientsPath) {
                IngredientsView()
                    .navigationDestination(for: Route.self, destination: routeView)
            }
            .tabItem {
                Image(systemName: Icons.ingredients)
                Text("Ingredients")
            }
            .tag(Tab.ingredients)
            
            NavigationStack(path: $global.barPath) {
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
    private func routeView(route: Route?) -> some View {
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
            .environmentObject(Global())
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
