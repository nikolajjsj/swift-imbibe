//
//  BooksView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

struct BooksView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(books, id: \.name) { b in
                    Link(destination: b.link) {
                        HStack {
                            Image(b.image)
                                .resizable()
                                .frame(width: 60, height: 80)
                                .scaledToFill()
                                .padding(.trailing)
                            
                            VStack(alignment: .leading) {
                                Text(b.name).font(.title3.bold()).foregroundColor(.white)
                                Text(b.description).foregroundColor(.white.opacity(0.8))
                            }.lineLimit(1)
                            
                            Spacer()
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(b.bgColor))
                    }
                }
            }.padding(.horizontal)
        }
        .navigationTitle("Books")
    }
    
    var books: [Book] {
        [
            Book(
                name: "The Savoy Cocktail Book",
                description: "Harry Craddock",
                image: "The Savoy Cocktail Book",
                bgColor: Colors.brown,
                link: URL(string: "https://www.amazon.com/Savoy-Cocktail-Book-Value/dp/1684226228")!
            ),
            Book(
                name: "Liquid Intelligence",
                description: "Dave Arnold",
                image: "Liquid Intelligence",
                bgColor: Colors.black,
                link: URL(string: "https://www.amazon.com/Liquid-Intelligence-Science-Perfect-Cocktail-ebook/dp/B00J8R3KOE")!
            ),
            Book(
                name: "Imbibe!",
                description: "David Wondrich",
                image: "Imbibe Book",
                bgColor: Colors.orange,
                link: URL(string: "https://www.amazon.de/-/en/David-Wondrich/dp/0399172610")!
            ),
            Book(
                name: "Smuggler's Cove: Exotic Cocktails, Rum, and the Cult of Tiki",
                description: "Martin Cate & Rebecca Cate",
                image: "Smugglers Cove",
                bgColor: Colors.black,
                link: URL(string: "https://www.amazon.de/-/en/Martin-Cate/dp/1607747324")!
            ),
            Book(
                name: "The Joy of Mixology",
                description: "Gary Regan",
                image: "The Joy Of Mixology",
                bgColor: Colors.red,
                link: URL(string: "https://www.amazon.com/Joy-Mixology-Consummate-Guide-Bartenders/dp/0609608843")!
            ),
            Book(
                name: "The Bon Vivant's Companion or How to Mix Drinks",
                description: "Jerry Thomas",
                image: "How to Mix Drinks",
                bgColor: Colors.red,
                link: URL(string: "https://www.amazon.com/How-Mix-Drinks-Vivants-Companion/dp/1843911981")!
            )
        ]
    }
}

struct Book {
    let name: String
    let description: String
    let image: String
    let bgColor: Color
    let link: URL
    
    init(name: String, description: String, image: String, bgColor: Color, link: URL) {
        self.name = name
        self.description = description
        self.image = image
        self.bgColor = bgColor
        self.link = link
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BooksView()
        }
    }
}
