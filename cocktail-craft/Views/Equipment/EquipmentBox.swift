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
    
    @State private var presented = false
    
    var body: some View {
        let bgColor = Color(red: 70 / 255, green: 70 / 255, blue: 70 / 255)
        
        Text(equipment.name)
            .foregroundColor(.white)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(RoundedRectangle(cornerRadius: 4).fill(bgColor))
            .background(RoundedRectangle(cornerRadius: 4).stroke(.white, lineWidth: 1))
            .onTapGesture { presented.toggle() }
            .sheet(isPresented: $presented) { EquipmentView(equipment) }
    }
}

struct EquipmentBox_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentBox(Equipments.instance.shaker)
    }
}
