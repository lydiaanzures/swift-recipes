//
//  RecipeModel.swift
//  Recipes (iOS)
//
//  Created by Lydia Anzures

import SwiftUI

// MARK: - DATA MODEL

struct Recipe: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
