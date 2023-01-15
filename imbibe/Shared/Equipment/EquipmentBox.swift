//
//  EquipmentBox.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 14/01/2023.
//

import SwiftUI

struct EquipmentBox: View {
    let equipment: Equipment
    
    init(_ equipment: Equipment) {
        self.equipment = equipment
    }
    
    var body: some View {
        Text(equipment.name)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(RoundedRectangle(cornerRadius: 4).fill(.clear)
                .background(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1)))
    }
}

struct EquipmentBox_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentBox(Equipments.shaker)
    }
}
