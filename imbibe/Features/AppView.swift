//
//  AppView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        NavigationView {
            TabView {
                DiscoverView().tabItem { TabItem(systemName: "binoculars", label: "Discover") }
                HomeView().tabItem { TabItem(systemName: "wineglass", label: "Drinks") }
                IngredientsView().tabItem { TabItem(systemName: "cooktop", label: "Ingredients") }
            }
        }
    }
    
    @ViewBuilder
    func TabItem(systemName: String, label: String) -> some View {
        VStack {
            Image(systemName: systemName)
            Text(label)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
