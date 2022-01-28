//
//  OnboardingView.swift
//  Recipes (iOS)
//
//  Created by Lydia Anzures on 1/28/22.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTIES
  
  var recipes: [Recipe] = recipesData
  
  // MARK: - BODY
  
  var body: some View {
    TabView {
      ForEach(recipes[0...5]) { item in
        RecipeCardView(recipe: item)
      } //: LOOP
    } //: TAB
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(recipes: recipesData)

  }
}
