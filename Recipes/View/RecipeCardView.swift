//
//  RecipeCardView.swift
//  Recipes (iOS)
//
//  Created by Lydia Anzures

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
      ZStack {
        VStack(spacing: 20) {
          // RECIPE: IMAGE
          Image(recipe.image)
            .resizable()
            .scaledToFit()
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            .scaleEffect(isAnimating ? 1.0 : 0.6)
          
          // RECIPE: TITLE
          Text(recipe.title)
            .foregroundColor(Color.white)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
          
          // RECIPE: HEADLINE
          Text(recipe.headline)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 16)
            .frame(maxWidth: 480)
          
          // BUTTON: START
          StartButtonView()
        } //: VSTACK
      } //: ZSTACK
      .onAppear {
        withAnimation(.easeOut(duration: 0.5)) {
          isAnimating = true
        }
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
      .background(LinearGradient(gradient: Gradient(colors: recipe.gradientColors), startPoint: .top, endPoint: .bottom))
      .cornerRadius(20)
      .padding(.horizontal, 20)
    }
  }

  // MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeCardView(recipe: recipesData[1])
      .previewLayout(.fixed(width: 320, height: 640))
  }
}
