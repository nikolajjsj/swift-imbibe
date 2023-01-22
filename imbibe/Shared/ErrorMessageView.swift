//
//  ErrorMessageView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

struct ErrorMessageView: View {
    let title: String
    let message: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title.bold())
                .multilineTextAlignment(.center)
                .padding(.bottom, 2)
            
            Text(message)
                .font(.callout)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: 300)
    }
}

struct ErrorMessageView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorMessageView(
            title: "Can't make any drinks",
            message: "Select your bar ingredients, to see which drinks you can make."
        )
    }
}
