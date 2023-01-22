//
//  BarView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 21/01/2023.
//

import SwiftUI

struct BarView: View {
    var body: some View {
        List {
            NavigationLink {
                BooksView()
            } label: {
                ListItem(
                    image: "Books",
                    title: "Books",
                    subtitle: "Our favorite books and all things drinks & alcohol"
                )
            }
        }
        .navigationTitle("Your Bar")
    }

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BarView()
        }
        .environmentObject(FavoritesViewModel())
    }
}
