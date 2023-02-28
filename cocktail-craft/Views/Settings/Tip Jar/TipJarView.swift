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
                .padding(.top, 16)
            
            Text("Help out the development of Cocktail Craft by giving me a tip")
                .font(.system(.body, design: .rounded))
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
            
            VStack {
                ForEach(store.products) { tip in
                    TipRow(tip)
                }
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color.secondaryBackground))
        .padding(12)
        .frame(maxWidth: 500)
        .overlay(alignment: .top) {
            Image(uiImage: UIImage(named: getAppIcon()!)!)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 70, height: 70)
                .offset(y: -25)
        }
    }
    
    @ViewBuilder
    func TipRow(_ tip: Product) -> some View {
        HStack(alignment: .center) {
            Image(tip.id)
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFit()
                .padding(.trailing, 5)
            
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
            .tint(.blue)
            .buttonStyle(.bordered)        }
        .padding(12)
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color.background))
    }
}

struct TipJarView_Previews: PreviewProvider {
    static var previews: some View {
        TipJarView {
            
        }
        .environmentObject(TipStore())
    }
}
