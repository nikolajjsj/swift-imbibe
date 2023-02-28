//
//  FAQView.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 28/02/2023.
//

import SwiftUI

struct FAQView: View {
    var body: some View {
        List {
            Section {
                FAQBox(
                    question: "How is alcohol strength calculated?",
                    answer: "It's calculated by taking the total volume of alcohol, and dividing by the total volume of the cocktail. It should also be noted that I take the liberty of saying that Ice adds about 15 ml of dilution."
                )
            }
        }
        .navigationTitle("FAQ")
    }
    
    @ViewBuilder
    func FAQBox(question: String, answer: String) -> some View {
        VStack(alignment: .leading) {
            Text(question)
                .font(.headline)
            
            Divider()
            
            Text(answer)
        }
    }
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FAQView()
        }
    }
}
