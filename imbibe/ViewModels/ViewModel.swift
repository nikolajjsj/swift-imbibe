//
//  ViewModel.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 22/01/2023.
//

import SwiftUI

/**
 A protocol for MVVM-architecture.
 
 View models manage most (but not all) of a view's logic. When handling large amounts of logic related to a particular view or views, it's useful to have a view model to manage the logic.
 
 View models act as the bridge between models and views in MVVM architecture.
 
 # Example
 
 View models, when declared in a view's class scope, must be declared as a property in one of two ways.
 
 __1. Instantiating First__
 
 When first instantiating a view model within a view's scope, the `@StateObject` wrapper should be used.
 
     @StateObject var viewModel = SomeViewModel()
 
 __2. Passing Second__
 
 When passing a view model from an instantiated view to another view, the `@ObservedObject` wrapped should be used.
 
     @ObservedObject var viewModel: SomeViewModel
 
 # Troubleshooting
 
 If views fail to refresh when updating properties in view models, use the following checks:
 
 1. Ensuring the property is declared within the view model using the `@Published` wrapper
 2. Changing `@ObservedObject` to `@StateObject` when defining a view model property within a view
 */
protocol ViewModel: ObservableObject {
  
  // MARK: - Properties
  
  /// The global instance
  var global: Global? { get set }
}

extension ViewModel {
  
  // MARK: - Methods
  
  /**
   Prepares the view model with the global instance.
   
   - parameter global: The global instance, taken from a `View`
   */
  func prepare(with global: Global) {
    self.global = global
  }
}
