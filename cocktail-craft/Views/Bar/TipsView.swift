//
//  TipsView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 01/02/2023.
//

import SwiftUI

struct Tip: Identifiable {
    let id: UUID
    let title: String
    let shortDescription: String
    let description: String
    let image: String
    
    init(title: String, shortDescription: String, description: String, image: String) {
        self.id = UUID()
        self.title = title
        self.shortDescription = shortDescription
        self.description = description
        self.image = image
    }
}

struct TipsView: View {
    let tips: [Tip] = [
        .init(
            title: "Shaking",
            shortDescription: "Improve shaking skills",
            description: "Fill the shaker with the \"dry\" ingredients first. Meaning to add all the ingredients except the ice, and wait to add the ice as the last step. This ensures that the ice doesn't begin to melt in the shaker causing dilution of the drink.",
            image: "ShakerTip"
        ),
        .init(
            title: "Shaking vs Stirring",
            shortDescription: "Know whether to pick one or the other",
            description: "As a general rule, if a drink contains fruit juices, eggs, or cream/dairy products, then that drink should be shaken. On the other hand if the drink only contains relatively transparent ingredients (spirits, bitters, vermouth, and so on), then that drink should be stirred.",
            image: "ShakingVersusStirring"
        ),
        .init(
            title: "Add a salted rim to a glass",
            shortDescription: "To add flair and taste notes to a drink",
            description: "To add a salt (or sugar) rim to a glass, you will need a citrus fruit or some kind of fruit juice. Gently add the fruit juice to the very edge of the glass (I often just rim one side of the glass). Then add the salt or sugar to the juiced part of the glass, gently, to make it stick.",
            image: "Margarita"
        ),
        .init(
            title: "How to muddle",
            shortDescription: "Improve oil and juice extraction by muddling",
            description: "Muddling is the act of gently pressing the herbs and/or fruits, to optimise extraction of oils and juices. This should not be done with a lot of force, we only want to gently coerce the herbs and fruits to release their oils. This will result in a much nicer drinking experience, as we dont get all the harsh flavors to escape the fruits & herbs.",
            image: "MuddlerTip"
        )
    ]
    
    @State private var selected: Tip? = nil
    
    var body: some View {
        List {
            ForEach(tips) { t in
                TipCard(t).onTapGesture { selected = t }
            }
        }
        .sheet(item: $selected) { sel in
            ScrollView {
                VStack(alignment: .center, spacing: 16) {
                    Text(sel.title).font(.headline)
                    Text(sel.description)
                }
                .padding(24)
            }
            .presentationDetents([.height(300)])
        }
    }
    
    @ViewBuilder
    func TipCard(_ tip: Tip) -> some View {
        HStack(spacing: 16) {
            Image(tip.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            
            VStack(alignment: .leading) {
                Text(tip.title).font(.headline)
                Text(tip.shortDescription).foregroundColor(.gray)
            }
        }
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
