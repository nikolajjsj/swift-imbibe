//
//  ContentView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI
import CoreData

struct HomeView: View {
    @State private var query: String = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filtered) { d in
                    DrinkCard(d: d)
                        .listRowSeparator(.hidden)
                }
            }
            .searchable(text: $query)
            .listStyle(.plain)
            .navigationTitle("Imbibe")
        }
    }
    
    var filtered: [Drink] {
        query.isEmpty
            ? drinks
            : drinks.filter({ $0.name.lowercased().contains(query.lowercased()) })
    }
    
    @ViewBuilder
    func DrinkCard(d: Drink) -> some View {
        let image = UIImage.init(named: d.name)
        let bgColor = image?.averageColor ?? .clear
        let fgColor = Color(uiColor: bgColor).contastColor
        
        NavigationLink {
            DrinkView(drink: d)
        } label: {
            HStack {
                if let image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 72)
                        .frame(maxHeight: 100)
                }
                
                VStack(alignment: .leading) {
                    Text(d.name).font(.title.bold())
                    Text("\(d.ingredients.count) ingredients")
                }
            }
        }
        .foregroundColor(fgColor)
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color(bgColor)))
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
