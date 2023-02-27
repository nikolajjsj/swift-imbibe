//
//  TipJarView.swift
//  cocktail-craft
//
//  Created by Nikolaj Johannes Skole Jensen on 27/02/2023.
//

import SwiftUI
import StoreKit


struct TipJarView: View {
    @EnvironmentObject var store: TipStore
    
    var didTapClose: () -> ()
    
    var body: some View {
        VStack(spacing: 8) {
            
            HStack {
                Spacer()
                Button(action: didTapClose) {
                    Image(systemName: "xmark")
                        .symbolVariant(.circle.fill)
                        .font(.system(.largeTitle, design: .rounded).bold())
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.gray, .gray.opacity(0.2))
                }
            }
            
            Text("Enjoying the app so far? 👀")
                .font(.system(.title2, design: .rounded).bold())
                .multilineTextAlignment(.center)
            
            VStack(spacing: 32) {
                ForEach(store.products) { tip in
                    TipRow(tip)
                }
            }
            .padding()
        }
        .padding()
        .background(Color.background, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
        .padding(8)
        .overlay(alignment: .top) {
            Image(systemName: "lanyardcard.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(6)
                .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                .offset(y: -25)
        }
    }
    
    @ViewBuilder
    func TipRow(_ tip: Product) -> some View {
        HStack(alignment: .center, spacing: 12) {
            Image(tip.id)
                .resizable()
                .frame(width: 40, height: 40)
                .scaledToFit()
            
            VStack(alignment: .leading) {
                Text(tip.displayName)
                Text(tip.description).foregroundColor(.gray)
            }
            
            Spacer()
            
            Button {
                Task {
                    await store.purchase(tip)
                }
            } label: {
                Text(tip.displayPrice)
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct TipJarView_Previews: PreviewProvider {
    static var previews: some View {
        TipJarView {
            
        }
        .environmentObject(TipStore())
    }
}
