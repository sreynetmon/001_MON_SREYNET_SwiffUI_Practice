//
//  MethodStep.swift
//  RecipeApp
//
//  Created by shuni on 7/10/26.
//

import Foundation


struct MethodStep: Identifiable{
    let id = UUID()
    let stepNumber: Int
    let instruction: String
}
