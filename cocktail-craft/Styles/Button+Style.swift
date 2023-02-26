//
//  Button+Style.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 26/02/2023.
//

import SwiftUI

struct ScaledButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.94 : 1)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}
