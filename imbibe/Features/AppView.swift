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
        NavigationStack(path: $appState.path) {
            TabView(selection: $appState.tab) {
                DiscoverView()
                    .tabItem {
                        Image(systemName: "binoculars")
                        Text("Discover")
                    }
                    .tag(Tab.discover)
                
                HomeView()
                    .tabItem {
                        Image(systemName: "wineglass")
                        Text("Drinks")
                    }
                    .tag(Tab.drinks)
                
                IngredientsView()
                    .tabItem {
                        Image(systemName: "cooktop")
                        Text("Ingredients")
                    }
                    .tag(Tab.ingredients)
            }
            .navigationDestination(for: Route.self, destination: routeView)
        }
    }
    
    @ViewBuilder
    func routeView(route: Route?) -> some View {
        switch route {
        case let .drink(d):
            DrinkView(drink: d)
        case let .ingredient(i):
            IngredientView(ingredient: i)
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
