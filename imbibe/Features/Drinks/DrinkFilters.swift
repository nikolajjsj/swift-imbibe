//
//  DrinkFilters.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 17/01/2023.
//

import SwiftUI


struct DrinkFilters: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var vm: DrinksViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("     ")
                Spacer()
                Text("Filters").font(.headline)
                Spacer()
                Button(role: .destructive, action: { vm.clearAll() }, label: {
                    Text("Clear")
                })
            }
            .padding(.horizontal)
            .padding(.vertical)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Strength").font(.headline)
                    LazyVStack {
                        ForEach(DrinksViewModel.Strength.allCases, id: \.self) { strength in
                            FilterOption(
                                label: strength.rawValue.description,
                                selected: vm.strengths.contains(strength),
                                onChanged: { vm.updateStrengths(strength) }
                            )
                        }
                    }.padding(.bottom, 32)
                    
                    Text("Era").font(.headline)
                    LazyVStack {
                        ForEach(DrinksViewModel.Era.allCases, id: \.self) { era in
                            FilterOption(
                                label: era.label,
                                selected: vm.eras.contains(era),
                                onChanged: { vm.updateEras(era) }
                            )
                        }
                    }
                }.padding(.horizontal)
            }
            
            Button { dismiss() } label: {
                Spacer()
                Text("Done (\(vm.drinks.count) Drinks)")
                    .font(.title2.bold())
                    .padding(.vertical, 8)
                Spacer()
            }
            .buttonStyle(.borderedProminent)
            .padding(.horizontal)
        }
        .presentationDetents([.medium, .large])
    }
    
    @ViewBuilder
    func FilterOption(label: String, selected: Bool, onChanged: @escaping () -> ()) -> some View {
        Button(action: onChanged, label: {
            HStack {
                Text(label)
                Spacer()
                Image(systemName: selected ? "checkmark.square.fill" : "square")
                    .imageScale(.large)
            }
            .contentShape(Rectangle())
        })
        .buttonStyle(.plain)
        .padding(.vertical, 6)
    }
}

struct DrinkFilters_Previews: PreviewProvider {
    static var previews: some View {
        DrinkFilters(vm: DrinksViewModel())
    }
}
