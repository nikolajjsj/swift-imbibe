//
//  DiscoverView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 11/01/2023.
//

import SwiftUI

struct DiscoverView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        let columns = [ GridItem(.flexible()), GridItem(.flexible()) ]
        
        ScrollView {
            VStack(alignment: .leading) {
                Text("Iconic Drinks")
                    .font(.headline)
                    .foregroundColor(.gray)
                LazyVGrid(columns: columns) {
                    ForEach(Drinks.allIconic.prefix(5)) { d in
                        DrinkCard(drink: d)
                    }
                    NavigationLink {
                        DrinksList(label: "Iconic Drinks", drinks: Drinks.allIconic)
                    } label: {
                        FillLabel("\(Drinks.allIconic.count - 5) more")
                    }.buttonStyle(.bordered)
                }.padding(.bottom, 42)
                
                Text("Base Spirit")
                    .font(.headline)
                    .foregroundColor(.gray)
                LazyVGrid(columns: columns) {
                    ForEach(Drink.Base.all, id: \.rawValue) { base in
                        NavigationLink {
                            DrinksList(label: "\(base.rawValue) Based", drinks: base.drinks)
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
                Text(label).font(.headline)
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
