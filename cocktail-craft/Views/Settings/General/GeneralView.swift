//
//  GeneralView.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 02/03/2023.
//

import SwiftUI

struct GeneralView: View {
    @AppStorage(LocalStorageKeys.discoverMissingIngredientTip.rawValue) var tips: Bool = true
    @AppStorage(LocalStorageKeys.discoverStylesList.rawValue) var styles: Bool = true
    @AppStorage(LocalStorageKeys.discoverCountriesList.rawValue) var countries: Bool = true
    
    var body: some View {
        List {
            Section {
                Toggle("Tips", isOn: $tips)
                Toggle("Cocktail styles", isOn: $styles)
                Toggle("Countries list", isOn: $countries)
            } header: {
                Text("Discover page sections")
            } footer: {
                Text("You can toggle these sections on/off based on your interests, and what you want to see on the discover page")
            }
        }
        .navigationTitle("General")
    }
}

struct GeneralView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GeneralView()
        }
    }
}
