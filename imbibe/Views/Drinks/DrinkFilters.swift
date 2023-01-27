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
            List {
                Section {
                    Picker("Sort by", selection: $vm.sort) {
                        ForEach(DrinksViewModel.Sort.allCases, id: \.self) { sort in
                            Text(sort.rawValue).tag(sort)
                        }
                    }
                } header: {
                    Text("Sorting").font(.headline)
                }
                
                Section {
                    ForEach(DrinksViewModel.Strength.allCases, id: \.self) { strength in
                        FilterOption(
                            label: strength.rawValue.description,
                            selected: vm.strengths.contains(strength),
                            onChanged: { vm.updateStrengths(strength) }
                        )
                    }
                } header: {
                    Text("Strength").font(.headline)
                }
                
                Section {
                    ForEach(Drink.Base.all, id: \.self) { base in
                        FilterOption(
                            label: base.rawValue.description,
                            selected: vm.baseSpirits.contains(base),
                            onChanged: { vm.updateBaseSpirits(base) }
                        )
                    }
                } header: {
                    Text("Base Spirit").font(.headline)
                }
                
                Section {
                    ForEach(DrinksViewModel.Era.allCases, id: \.self) { era in
                        FilterOption(
                            label: era.label,
                            selected: vm.eras.contains(era),
                            onChanged: { vm.updateEras(era) }
                        )
                    }
                } header: {
                    Text("Era").font(.headline)
                }
            }
            
            HStack {
                Button(role: .destructive, action: { vm.clearAll() }, label: {
                    Text("Clear")
                        .frame(maxWidth: 100)
                })
                
                
                Button(action: { dismiss() }, label: {
                    Text("Done (\(vm.drinks.count) Drinks)")
                        .frame(maxWidth: .infinity)
                })
            }
            .font(.callout.bold())
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
