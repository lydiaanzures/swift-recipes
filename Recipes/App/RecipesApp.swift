//
//  RecipesApp.swift
//  Shared
//
//  Created by Lydia Anzures on 1/28/22.
//

import SwiftUI

@main
struct RecipesApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
