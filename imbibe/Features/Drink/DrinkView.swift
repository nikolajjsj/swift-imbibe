//
//  DrinkView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI

struct DrinkView: View {
    let drink: Drink
    
    var body: some View {
        List {
            DrinkImage().listRowSeparator(.hidden)
            
            Section {
                ForEach(drink.ingredients) { i in
                    Ingredient(i: i)
                }
            } header: {
                Text("Ingredients").font(.title2.bold())
            }.listRowSeparator(.hidden)
            
            Section {
                ForEach(Array(drink.steps.enumerated()), id: \.offset) { index, step in
                    HStack {
                        Text("\(index + 1).").font(.title3.bold())
                        Step(text: step.string)
                    }
                }
            } header: {
                Text("Steps (\(drink.steps.count))").font(.title2.bold())
            }.listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .navigationTitle(drink.name)
    }
    
    
    @ViewBuilder
    func DrinkImage() -> some View {
        let image = UIImage.init(named: drink.name)
        let bgColor = image?.averageColor ?? .clear
        
        if let image {
            HStack {
                Spacer()
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 300)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                Spacer()
            }
            .background(RoundedRectangle(cornerRadius: 10).fill(Color(bgColor)))
        }
    }
    
    @ViewBuilder
    func Ingredient(i: IngredientWithVolume) -> some View {
        HStack {
            if let dashes = i.dashes {
                Text("\(dashes) dash(-es)")
            }
            if let volume = i.volumeInML {
                Text("\(volume) ml")
            }
            Text(i.ingredient.name)
            Spacer()
        }
        .padding(10)
        .background(RoundedRectangle(cornerRadius: 10).fill(.white))
        .foregroundColor(.black)
        .shadow(radius: 1)
    }
    
    @ViewBuilder
    func Step(text: String) -> some View {
        HStack {
            Text(text)
            Spacer()
        }
        .padding(10)
        .background(RoundedRectangle(cornerRadius: 10).fill(.white))
        .foregroundColor(.black)
        .shadow(radius: 1)
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinkView(drink: drinks[0])
        }
    }
}
