//
//  ContentView.swift
//  Shared
//
//  Created by Lydia Anzures on 1/28/22.
//


import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  
  @State private var isShowingSettings: Bool = false
  
  var recipes: [Recipe] = recipesData

  // MARK: - BODY

  var body: some View {
    NavigationView {
      List {
        ForEach(recipes.shuffled()) { item in
          NavigationLink(destination: RecipeDetailView(recipe: item)) {
            RecipeRowView(recipe: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Recipes")
      .navigationBarItems(
        trailing:
          Button(action: {
            isShowingSettings = true
          }) {
            Image(systemName: "slider.horizontal.3")
          } //: BUTTON
          .sheet(isPresented: $isShowingSettings) {
            //changed to settings function
              SettingsView()
          }
      )
    } //: NAVIGATION
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(recipes: recipesData)
     
  }
}
