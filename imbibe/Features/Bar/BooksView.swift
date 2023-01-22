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
                                .scaledToFill()
                                .frame(width: 60, height: 80)
                                .padding(.trailing)
                            
                            VStack(alignment: .leading) {
                                Text(b.name).font(.title3.bold()).foregroundColor(.white)
                                Text(b.description).foregroundColor(.white.opacity(0.8))
                            }
                            
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
