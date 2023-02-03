//
//  ContentView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI
import CoreData

struct DrinksView: View {
    @ObservedObject var vm = DrinksViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [ GridItem(.flexible()), GridItem(.flexible()) ]) {
                ForEach(vm.filtered) { d in
                    DrinkCard(drink: d)
                }
            }
            .padding(.horizontal)
            .navigationTitle("Drinks")
        }
        .searchable(text: $vm.query, placement: .navigationBarDrawer(displayMode: .always))
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: toggleFilters, label: { Text("Filters") })
            }
        }
        .sheet(isPresented: $vm.showFilters) { DrinkFilters(vm: vm) }
    }
    
    func toggleFilters() {
        withAnimation {
            vm.showFilters.toggle()
        }
    }
}

struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinksView()
        }
    }
}
