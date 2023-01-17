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
                detailSection
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
    
    func getAppIcon() -> String? {
        guard let infoPlist = Bundle.main.infoDictionary else { return nil }
        guard let bundleIcons = infoPlist["CFBundleIcons"] as? NSDictionary else { return nil }
        guard let bundlePrimaryIcon = bundleIcons["CFBundlePrimaryIcon"] as? NSDictionary else { return nil }
        guard let bundleIconFiles = bundlePrimaryIcon["CFBundleIconFiles"] as? NSArray else { return nil }
        guard let appIcon = bundleIconFiles.lastObject as? String else { return nil }
        return appIcon
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
