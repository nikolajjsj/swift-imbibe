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
    @State private var ingredientSheet: Bool = false
    
    var body: some View {
        TabView(selection: $tab) {
            VStack(spacing: 42) {
                Image(uiImage: UIImage(named: getAppIcon()!)!)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(24)
                    .frame(width: 100, height: 100)
                
                VStack(spacing: 10) {
                    Title("👋 Welcome to Cocktail Craft!")
                    Subtitle("Take your first step towards better drinks.")
                }
                
                NextButton()
            }.padding(32).tag(0)
            
            VStack(spacing: 32) {
                VStack(spacing: 10) {
                    Title("🫵 Your Bar")
                    Subtitle("Add ingredients to your bar and see which cocktails you can mix")
                    
                    Button("Add Ingredients", action: { ingredientSheet.toggle() })
                        .bold()
                }
                
                Image("Ingredients")
                    .resizable()
                    .scaledToFit()
                
                NextButton()
            }.padding(32).tag(1)
            
            VStack(spacing: 42) {
                Title("🎉 Enjoy your next cocktail")
                
                Image("Tips")
                    .resizable()
                    .scaledToFit()
                
                DoneButton()
            }.padding(32).tag(2)
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .background(Color.accentColor.opacity(0.15).gradient)
        .sheet(isPresented: $ingredientSheet) {
            NavigationView {
                BarIngredientsView()
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Done", action: { ingredientSheet.toggle() })
                        }
                    }
            }
        }
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
                global.setOnboarded(true)
            }
        } label: {
            Text("Done").font(.title.bold())
        }.buttonStyle(.borderedProminent)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OnboardingView()
        }
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
