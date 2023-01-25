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
            HStack {
                if let image = UIImage.init(named: equipment.image) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: min(image.size.height, 200))
                        .padding()
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(equipment.name)
                        .font(.title2.bold())
                    Text(equipment.description)
                        .multilineTextAlignment(.leading)
                }
                
            }.padding()
        }
        .presentationDetents([.medium])
    }
}

struct EquipmentView_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentView(Equipments.instance.shaker)
    }
}
