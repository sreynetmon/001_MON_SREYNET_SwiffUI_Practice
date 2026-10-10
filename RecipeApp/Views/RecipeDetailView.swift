//
//  RecipeDetailView.swift
//  RecipeApp
//
//  Created by shuni on 7/10/26.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    @State private var servings: Int
    
    @Environment(\.dismiss) private var dismiss
    
    init(recipe: Recipe){
        self.recipe = recipe
        _servings = State(initialValue: recipe.servings)
    }
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 20){
                heroImage
                
                recipeInformation
                
                ServingControl(servings: $servings)
                
                ingredientsSection
                
                methodSection
            }
        }
        .background(Color(.clear))
        .ignoresSafeArea(edges: .top)
        .toolbar(.hidden, for: .navigationBar)

    }
    
    //heroImage
    private var heroImage: some View{
        ZStack(alignment: .topLeading){
            Image(recipe.imageName).resizable().scaledToFill().frame(maxWidth: .infinity, minHeight: 300, maxHeight: 300).clipped()
            Button{
                dismiss()
            } label: {
                Image(systemName: "chevron.left").font(.headline).foregroundStyle(.primary).frame(width: 40, height: 40).background(.ultraThinMaterial).clipShape(Circle())
            }
            .padding(.top, 50)
            .padding(.leading, 20)
        }
    }
    
    //recipeInformation
    private var recipeInformation: some View{
        VStack(alignment: .leading, spacing: 20){
            HStack(spacing: 8){
                Text(recipe.category).font(.caption).fontWeight(.bold).foregroundStyle(.orange)
                Label("\(recipe.cookTime) min", systemImage: "clock").font(.caption).foregroundStyle(.secondary)
            }
            
            Text(recipe.name).font(.system(size: 28, weight: .bold))
            
            Text(recipe.description).font(.subheadline).foregroundStyle(.secondary)
            
        }
        .padding(.horizontal, 20)
    }
    
    //ingredientsSaction
    private var ingredientsSection: some View{
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Text("Ingredients").font(.title3).fontWeight(.bold)
                Spacer()
                Text("\(recipe.ingredients.count) items").font(.caption).foregroundStyle(.secondary)
            }
            
            VStack(spacing: 0){
                ForEach(recipe.ingredients){ ingredient in
                    IngredientRow(ingredient: ingredient, servings: servings, baseServings: recipe.servings)
                    Divider()
                }
            }
            .padding(.horizontal)
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 14))
        }
        .padding(.horizontal, 20)
    }
    
    //methodSection
    private var methodSection: some View{
        VStack(alignment: .leading, spacing: 12){
            Text("Method").font(.title3).fontWeight(.bold)
            
            ForEach(recipe.methodSteps){step in
                MethodStepCard(step: step)
            }
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 30)
    }
}

#Preview {
    NavigationStack{
        RecipeDetailView(recipe: sampleRecipes[3])
    }
}
