//
//  RecipeDetailView.swift
//  Recipes (iOS)
//
//  Created by Lydia Anzures

import SwiftUI

struct RecipeDetailView: View {
  // MARK: - PROPERTIES
  
  var recipe: Recipe

  // MARK: - BODY

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          // HEADER
          RecipeHeaderView(recipe: recipe)
          
          VStack(alignment: .leading, spacing: 20) {
            // TITLE
            Text(recipe.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(recipe.gradientColors[1])
            
            // HEADLINE
            Text(recipe.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            // NUTRIENTS
            RecipeNutrientsView(recipe: recipe)
            
            // SUBHEADLINE
            Text("Learn more about \(recipe.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(recipe.gradientColors[1])
            
            // DESCRIPTION
            Text(recipe.description)
              .multilineTextAlignment(.leading)
            
            // LINK
            SourceLinkView()
              .padding(.top, 10)
              .padding(.bottom, 40)
          } //: VSTACK
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        } //: VSTACK
        .navigationBarTitle(recipe.title, displayMode: .inline)
        .navigationBarHidden(true)
      } //: SCROLL
      .edgesIgnoringSafeArea(.top)
    } //: NAVIGATION
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

// MARK: - PREVIEW

struct RecipeDetailView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeDetailView(recipe: recipesData[0])
  }
}
