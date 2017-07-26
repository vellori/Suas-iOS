//
//  File.swift
//  ReDucks
//
//  Created by Omar Abdelhafith on 17/07/2017.
//  Copyright © 2017 Omar Abdelhafith. All rights reserved.
//

import Foundation


/// Protocol that represents the main component type
/// Component represents a main UI view
public protocol Component: class {

  /// Component state type
  /// If the component type is a subclass of State, the view will state will only be set if the old value has changed
  associatedtype StateType: Any

  /// The component state.
  ///
  /// When connecting a component to a store, the new state for the component will be set automatically to the component when it's changed
  var state: StateType { get set }
}

/// Action that is to be dispatched to the store
///
/// -----
/// **Example**
///
/// ```
/// struct ButtonTappedAction: Action { }
///
/// store.dispatch(action: ButtonTappedAction())
/// ```
public protocol Action {}
