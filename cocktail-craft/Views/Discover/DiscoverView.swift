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
        
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                if let image = UIImage.init(named: "Tips") {
                    HStack {
                        Spacer()
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 250)
                        Spacer()
                    }.padding(.bottom, 24)
                }
                
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
                                    .padding(.vertical, 5)
                            }
                            FillLabel(base.rawValue)
                        }.buttonStyle(.bordered)
                    }
                }.padding(.bottom, 24)
                
                Text("Styles")
                    .font(.headline)
                    .foregroundColor(.gray)
                LazyVGrid(columns: columns) {
                    ForEach(Drink.Category.all, id: \.rawValue) { category in
                        NavigationLink {
                            DrinksList(drinks: category.drinks)
                                .navigationTitle(category.rawValue)
                        } label: {
                            VStack(spacing: 16) {
                                if let image = category.image {
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxHeight: 120)
                                }
                                Text(category.rawValue)
                                    .font(.title3.bold())
                            }
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity)
                        }.buttonStyle(.bordered)
                    }
                }.padding(.bottom, 24)
                
                Text("Origins")
                    .font(.headline)
                    .foregroundColor(.gray)
                LazyVGrid(columns: columns) {
                    ForEach(Array(Drinks.instance.countries.keys).sorted(by: { $0.name < $1.name }), id: \.name) { origin in
                        NavigationLink {
                            DrinksList(drinks: Drinks.instance.countries[origin] ?? [])
                                .navigationTitle("\(origin.flag)\(origin.name)")
                        } label: {
                            Spacer()
                            Text(origin.flag).font(.title)
                            FillLabel(origin.name)
                        }.buttonStyle(.bordered)
                    }
                }.padding(.bottom, 24)
            }
//            .frame(maxWidth: 800)
            .padding(.horizontal)
        }
        .navigationTitle("Discover")
        .navigationBarTitleDisplayMode(.inline)
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
