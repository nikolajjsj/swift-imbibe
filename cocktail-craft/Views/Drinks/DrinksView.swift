//
//  ContentView.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import SwiftUI
import CoreData

struct DrinksView: View {
    var body: some View {
        DrinksListView(drinks: Drinks.instance.all)
            .navigationTitle("Drinks")
    }
}

struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrinksView()
        }
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
