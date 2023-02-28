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
                Section {
                    NavigationLink {
                        UnitsView()
                    } label: {
                        Label {
                            Text("Units")
                        } icon: {
                            Image(systemName: "bookmark.square.fill")
                                .font(.title)
                                .foregroundColor(.red)
                        }
                    }
                }
                
                Section {
                    NavigationLink {
                        TipJarView()
                    } label: {
                        Label {
                            Text("Tip Jar")
                        } icon: {
                            Image(systemName: "dollarsign.square.fill")
                                .font(.title)
                                .foregroundColor(.green)
                        }
                    }
                    
                    NavigationLink {
                        FAQView()
                    } label: {
                        Label {
                            Text("FAQ")
                        } icon: {
                            Image(systemName: "questionmark.square.fill")
                                .font(.title)
                                .foregroundColor(.blue)
                        }
                    }
                    
                    NavigationLink {
                        AboutView()
                    } label: {
                        Label {
                            Text("About")
                        } icon: {
                            Image(systemName: "info.square.fill")
                                .font(.title)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(Global())
            .environmentObject(TipStore())
    }
}
