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
    
    @State private var tipJar: Bool = false
    @State private var showThanks: Bool = false
    
    var body: some View {
        List {
            VStack(spacing: 8) {
                Image(uiImage: UIImage(named: getAppIcon()!)!)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 70, height: 70)
                
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
        }
        .navigationTitle("Tip Jar")
        .navigationBarTitleDisplayMode(.inline)
        .overlay(alignment: .bottom) {
            if showThanks {
                ThanksView { showThanks = false }
                .transition(.move(edge: .bottom).combined(with: .opacity))
            }
        }
        .animation(.default, value: showThanks)
        .onChange(of: store.action) { action in
            if action == .succesful {
                tipJar = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    showThanks = true
                    store.reset()
                }
            }
        }
        .alert(isPresented: $store.hasError, error: store.error) {}
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
                Task { await store.purchase(tip) }
            } label: {
                Text(tip.displayPrice)
            }
            .tint(.blue)
            .buttonStyle(.bordered)        }
        .padding(12)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.secondaryBackground))
    }
}

struct TipJarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TipJarView()
        }
        .environmentObject(TipStore())
    }
}
