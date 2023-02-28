//
//  SettingsView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 13/01/2023.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var global: Global
    @EnvironmentObject var store: TipStore
    
    @AppStorage(LocalStorageKeys.unit.rawValue) var unit = UnitVolume.milliliters.symbol
    
    @State private var tipJar: Bool = false
    @State private var showThanks: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                detailSection
                
                Section {
                    Picker("Volume", selection: $unit) {
                        ForEach(usedUnitVolumeMetrics, id: \.symbol) { unit in
                            Text(unit.symbol)
                        }
                    }
                } header: {
                    Text("Units")
                }
                
                Section {
                    Button {
                        tipJar.toggle()
                    } label: {
                        Label("Tip Jar", systemImage: "lanyardcard.fill")
                    }
                } header: {
                    Text("About")
                }
            }
            .navigationTitle("Settings")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay {
            if tipJar {
                Color.black.opacity(0.8)
                    .ignoresSafeArea()
                    .transition(.opacity)
                    .onTapGesture { tipJar.toggle() }
                TipJarView { tipJar = false }
                .environmentObject(store)
                .transition(.opacity.combined(with: .offset(x: 0, y: 10)))
            }
        }
        .overlay(alignment: .bottom) {
            if showThanks {
                ThanksView {
                    showThanks = false
                }
                .transition(.move(edge: .bottom).combined(with: .opacity))
            }
        }
        .animation(.spring(), value: tipJar)
        .animation(.spring(), value: showThanks)
        .onChange(of: store.action) { action in
            if action == .succesful {
                tipJar = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    showThanks = true
                    store.reset()
                }
            }
        }
        .alert(isPresented: $store.hasError, error: store.error) {
            
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
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(Global())
            .environmentObject(TipStore())
    }
}
