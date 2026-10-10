//
//  Recipe.swift
//  RecipeApp
//
//  Created by shuni on 7/10/26.
//

import Foundation

struct Recipe: Identifiable{
    let id = UUID()
    
    let name: String
    let category : String
    let cookTime : Int
    let description : String
    let imageName : String
    
    let servings : Int
    let ingredients: [Ingredient]
    let methodSteps: [MethodStep]
}
