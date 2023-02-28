//
//  UnitsView.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 28/02/2023.
//

import SwiftUI

struct UnitsView: View {
    @AppStorage(LocalStorageKeys.unit.rawValue) var unit = UnitVolume.milliliters.symbol
    
    var body: some View {
        List {
            Section {
                Picker("Volume", selection: $unit) {
                    ForEach(usedUnitVolumeMetrics, id: \.symbol) { unit in
                        Text(unit.symbol)
                    }
                }
            }
        }
        .navigationTitle("Units")
    }
}

struct UnitsView_Previews: PreviewProvider {
    static var previews: some View {
        UnitsView()
    }
}
