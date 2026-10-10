//
//  Ingredient.swift
//  RecipeApp
//
//  Created by shuni on 7/10/26.
//

import Foundation

struct Ingredient: Identifiable{
    let id = UUID()
    let amount: Double
    let unit: String
    let name: String
}
