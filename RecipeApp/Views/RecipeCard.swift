//
//  RecipeCard.swift
//  RecipeApp
//
//  Created by shuni on 7/10/26.
//

import SwiftUI

struct RecipeCard: View {
    let recipe: Recipe
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            Image(recipe.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 130)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            Text(recipe.name)
                .font(.headline)
                .foregroundStyle(.primary)
                .lineLimit(2)
            HStack(spacing: 4){
                Text("\(recipe.cookTime) min")
                Text(".")
                Text("Serves \(recipe.servings)")
            }
            .font(.caption)
            .foregroundStyle(.secondary)
        }
    }
}
