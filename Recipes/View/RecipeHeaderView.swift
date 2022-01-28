//
//  RecipeHeaderView.swift
//  Recipes (iOS)
//
//  Created by Lydia Anzures


import SwiftUI

struct RecipeHeaderView: View {
  // MARK: - PROPERTIES
  
  var recipe: Recipe
  
  @State private var isAnimatingImage: Bool = false

  // MARK: - BODY

  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: recipe.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
      
      Image(recipe.image)
        .resizable()
        .scaledToFit()
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
        .padding(.vertical, 20)
        .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
    } //: ZSTACK
    .frame(height: 440)
    .onAppear() {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimatingImage = true
      }
    }
  }
}

// MARK: - PREVIEW

struct RecipeHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeHeaderView(recipe: recipesData[0])
      .previewLayout(.fixed(width: 375, height: 440))
  }
}
