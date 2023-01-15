//
//  ViewExtensions.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 14/01/2023.
//

import SwiftUI

extension View {
    func detailCard() -> some View {
        self
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(.background.opacity(0.4)))
            .background(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 0.4))
            
    }
}
