//
//  SettingsView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 13/01/2023.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var global: Global
    
    var body: some View {
        NavigationView {
            List {
                detailSection
                
                Section {
                    Button(role: .destructive) {
                        withAnimation {
                            global.toggleOnboarded()
                        }
                    } label: {
                        Text("Clear")
                    }
                } header: {
                    Text("App")
                } footer: {
                    Text("This will reset you to the onboarding step, resulting in the onboarding page to be shown again")
                }
            }
            .navigationTitle("Settings")
        }
    }
    
    var detailSection: some View {
        Section {
            HStack(spacing: 16) {
                Image(uiImage: UIImage(named: getAppIcon()!)!)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 72, height: 72)
                
                VStack(alignment: .leading) {
                    Text("Imbibe!")
                        .font(.title.bold())
                    
                    Text("by Nikolaj Jensen")
                        .font(.title3.bold())
                        .foregroundColor(.gray)
                    
                    HStack {
                        if let release = Bundle.main.releaseVersionNumber {
                            Text("Version \(release)")
                        }
                        if let build = Bundle.main.buildVersionNumber {
                            Text("v\(build)")
                        }
                    }
                    .font(.title3.bold())
                    .foregroundColor(.gray)
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
