//
//  AboutView.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 28/02/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        List {
            Section {
                HStack(spacing: 16) {
                    Image(uiImage: UIImage(named: getAppIcon()!)!)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .frame(width: 72, height: 72)
                    
                    VStack(alignment: .leading) {
                        Text("Cocktail Craft!")
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
            
            Section {
                PrivacyPolicyLink()
            }
        }
        .navigationTitle("About")
    }
    
    @ViewBuilder
    func PrivacyPolicyLink() -> some View {
        HStack {
            Image(systemName: "hand.raised.square.fill")
                .font(.title)
                .foregroundColor(.blue)
            Link("Privacy Policy", destination: URL(string: "https://nikolajjsj.com/imbibe/privacy-policy/")!)
            Spacer()
            Image(systemName: "chevron.forward")
                .imageScale(.small)
                .foregroundColor(.gray)
        }
        .foregroundColor(.primary)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AboutView()
        }
    }
}
