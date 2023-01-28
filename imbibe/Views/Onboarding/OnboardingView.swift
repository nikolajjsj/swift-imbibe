//
//  OnboardingView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 28/01/2023.
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var global: Global
    
    @State private var tab: Int = 0
    
    var body: some View {
        TabView(selection: $tab) {
            VStack(spacing: 42) {
                Image(uiImage: UIImage(named: getAppIcon()!)!)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(24)
                    .frame(width: 100, height: 100)
                
                VStack(spacing: 10) {
                    Title("👋 Welcome to Imbibe!")
                    Subtitle("Take your first step towards better drinks.")
                }
                
                NextButton()
            }.padding(32).tag(0)
            
            VStack(spacing: 32) {
                VStack(spacing: 10) {
                    Title("🫵 Your Bar")
                    Subtitle("Find out which drinks you can mix with the ingredients you have")
                }
                
                Image("Tips")
                    .resizable()
                    .scaledToFit()
                
                DoneButton()
            }.padding(32).tag(1)
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .background(Color.red.opacity(0.2).gradient)
    }
    
    func Title(_ text: String) -> some View {
        Text(text)
            .font(.title)
            .fontWeight(.heavy)
            .multilineTextAlignment(.center)
    }
    
    func Subtitle(_ text: String) -> some View {
        Text(text)
            .font(.title3)
            .multilineTextAlignment(.center)
    }
    
    func NextButton() -> some View {
        Button {
            withAnimation { tab += 1 }
        } label: {
            Text("Next").font(.title.bold())
        }.buttonStyle(.bordered)
    }
    
    func DoneButton() -> some View {
        Button {
            withAnimation {
                global.toggleOnboarded()
            }
        } label: {
            Text("Done").font(.title.bold())
        }.buttonStyle(.borderedProminent)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
