//
//  RecipeRowView.swift
//  Recipes (iOS)
//
//  Created by Lydia Anzures

import SwiftUI

struct RecipeRowView: View {
  // MARK: - PROPERTIES
  
  var recipe: Recipe

  // MARK: - BODY

  var body: some View {
    HStack {
      Image(recipe.image)
        .renderingMode(.original)
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80, alignment: .center)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
        .background(
          LinearGradient(gradient: Gradient(colors: recipe.gradientColors), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(8)
      
      VStack(alignment: .leading, spacing: 5) {
        Text(recipe.title)
          .font(.title2)
          .fontWeight(.bold)
        Text(recipe.headline)
          .font(.caption)
          .foregroundColor(Color.secondary)
      }
    } //: HSTACK
  }
}

// MARK: - PREVIEW

struct RecipeRowView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeRowView(recipe: recipesData[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
