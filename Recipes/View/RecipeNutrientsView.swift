//
//  RecipeNutrientsView.swift
//  Recipes (iOS)
//
//  Created by Lydia Anzures


import SwiftUI

struct RecipeNutrientsView: View {
  // MARK: - PROPERTIES
  
  var recipe: Recipe
  let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

  // MARK: - BODY

  var body: some View {
    GroupBox() {
      DisclosureGroup("Nutritional value per 100g") {
        ForEach(0..<nutrients.count, id: \.self) { item in
          Divider().padding(.vertical, 2)
          
          HStack {
            Group {
              Image(systemName: "info.circle")
              Text(nutrients[item])
            }
            .foregroundColor(recipe.gradientColors[1])
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            
            Text(recipe.nutrition[item])
              .multilineTextAlignment(.trailing)
          }
        }
      }
    } //: BOX
  }
}

// MARK: - PREVIEW

struct RecipeNutrientsView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeNutrientsView(recipe: recipesData[0])
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 375, height: 480))
      .padding()
  }
}
