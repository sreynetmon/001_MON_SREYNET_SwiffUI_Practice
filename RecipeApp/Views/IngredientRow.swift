//
//  IngredientRow.swift
//  RecipeApp
//
//  Created by shuni on 7/10/26.
//

import SwiftUI

struct IngredientRow: View {
    let ingredient: Ingredient
    let servings: Int
    let baseServings: Int
    
    private var scaledAmount: Double{
        ingredient.amount * Double(servings) / Double(baseServings)
    }
    
    private func formatAmount(_ amount: Double) -> String{
        if amount == amount.rounded(){
            return String(Int(amount))
        } else{
            return String(format: "%.1f", amount)
        }
    }
    var body: some View {
        HStack{
            Text(formatAmount(scaledAmount)).fontWeight(.semibold).foregroundStyle(.secondary).frame(width: 55, alignment: .leading)
            
            if !ingredient.unit.isEmpty{
                Text(ingredient.unit).frame(width: 50, alignment: .leading)
            }
            
            Text(ingredient.name)
            
            Spacer()
        }
        .padding(.vertical, 10)
    }
}
