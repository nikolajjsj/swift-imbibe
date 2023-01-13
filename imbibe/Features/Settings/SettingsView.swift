//
//  SettingsView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 13/01/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink("About", destination: EmptyView())
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
