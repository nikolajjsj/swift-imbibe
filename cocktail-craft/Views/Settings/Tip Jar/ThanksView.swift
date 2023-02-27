//
//  ThanksView.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 27/02/2023.
//

import SwiftUI

struct ThanksView: View {
    
    var didTapClose: () -> ()
    
    var body: some View {
        VStack(spacing: 8) {
            
            Text("Thank You ❤️")
                .font(.system(.title2, design: .rounded).bold())
                .multilineTextAlignment(.center)
            
            Text("All tips greatly helps in the development of Cocktail Craft!")
                .font(.system(.body, design: .rounded))
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
            
            Button(action: didTapClose) {
                Text("Close")
                    .font(.system(.title3, design: .rounded).bold())
                    .tint(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue, in: RoundedRectangle(cornerRadius: 10,
                                                            style: .continuous))
            }
        }
        .padding(16)
        .background(Color.background, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
        .padding(.horizontal, 8)
    }
}

struct ThanksView_Previews: PreviewProvider {
    static var previews: some View {
        ThanksView {}
    }
}
