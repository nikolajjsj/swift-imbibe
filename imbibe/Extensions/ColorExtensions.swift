//
//  ColorExtensions.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI

extension Color {
    enum Brightness {
        case light, medium, dark, transparent
        
        private enum Threshold {
            static let transparent: CGFloat = 0.1
            static let light: CGFloat = 0.75
            static let dark: CGFloat = 0.3
        }
        
        init(brightness: CGFloat, alpha: CGFloat) {
            if alpha < Threshold.transparent {
                self = .transparent
            } else if brightness > Threshold.light {
                self = .light
            } else if brightness < Threshold.dark {
                self = .dark
            } else {
                self = .medium
            }
        }
    }
    
    var brightness: Brightness {
        var b: CGFloat = 0
        var a: CGFloat = 0
        let uiColor = UIColor(self)
        uiColor.getHue(nil, saturation: nil, brightness: &b, alpha: &a)
        return .init(brightness: b, alpha: a)
    }
    
    var contrastColor: Self {
        switch brightness {
        case .light:
            return .black
        case .medium:
            return .black
        case .dark:
            return .white
        case .transparent:
            return Color.label
        }
    }
    
#if os(macOS)
    static let label = Color.gray
    static let background = Color(NSColor.windowBackgroundColor)
    static let secondaryBackground = Color(NSColor.underPageBackgroundColor)
    static let tertiaryBackground = Color(NSColor.controlBackgroundColor)
#else
    static let label = Color(UIColor.label)
    static let background = Color(UIColor.systemBackground)
    static let secondaryBackground = Color(UIColor.secondarySystemBackground)
    static let tertiaryBackground = Color(UIColor.tertiarySystemBackground)
#endif
}
