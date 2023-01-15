//
//  EquipmentView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 15/01/2023.
//

import SwiftUI

struct EquipmentView: View {
    let equipment: Equipment
    
    init(_ equipment: Equipment) {
        self.equipment = equipment
    }
    
    var body: some View {
        ScrollView {
            VStack {
                if let image = UIImage.init(named: equipment.image) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: min(image.size.height, UIScreen.main.bounds.size.height / 3))
                        .padding()
                }
                
                Text(equipment.name).font(.headline)
                
                Text(equipment.description)
            }.padding(.horizontal)
        }
        .presentationDetents([.medium, .large])
    }
}

struct EquipmentView_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentView(Equipments.shaker)
    }
}
