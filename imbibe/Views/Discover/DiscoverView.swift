//
//  DiscoverView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        let columns = [ GridItem(.flexible()), GridItem(.flexible()) ]
        
        ScrollView {
            VStack(alignment: .leading) {
                Text("Base Spirit")
                    .font(.headline)
                    .foregroundColor(.gray)
                LazyVGrid(columns: columns) {
                    ForEach(Drink.Base.all, id: \.rawValue) { base in
                        NavigationLink {
                            DrinksList(drinks: base.drinks)
                                .navigationTitle("\(base.rawValue) Based")
                        } label: {
                            if let image = base.image {
                                Spacer()
                                Image(image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 50)
                                    .padding(.vertical, 8)
                            }
                            FillLabel(base.rawValue)
                        }.buttonStyle(.bordered)
                    }
                }.padding(.bottom, 42)
                
                Text("Origins")
                    .font(.headline)
                    .foregroundColor(.gray)
                LazyVGrid(columns: columns) {
                    ForEach(Array(Drinks.countries.keys).sorted(by: { $0.name < $1.name }), id: \.name) { origin in
                        NavigationLink {
                            DrinksList(drinks: Drinks.countries[origin] ?? [])
                                .navigationTitle("\(origin.flag)\(origin.name)")
                        } label: {
                            Spacer()
                            Text(origin.flag).font(.title)
                            FillLabel(origin.name)
                        }.buttonStyle(.bordered)
                    }
                }.padding(.bottom, 42)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
    
    @ViewBuilder
    func FillLabel(_ label: String) -> some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(label).font(.headline).lineLimit(1)
                Spacer()
            }
            Spacer()
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DiscoverView()
        }
    }
}
