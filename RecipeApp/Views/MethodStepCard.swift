//
//  MethodStepCard.swift
//  RecipeApp
//
//  Created by shuni on 7/10/26.
//

import SwiftUI

struct MethodStepCard: View {
    let step: MethodStep
    var body: some View {
        HStack(alignment: .top,spacing: 12){
            Text("\(step.stepNumber)").font(.caption).fontWeight(.bold).foregroundStyle(.orange).frame(width: 28, height: 28).background(Color.orange.opacity(0.12)).clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 6){
                Text(step.instruction).font(.subheadline)
//                
//                if let time = step.time{
//                    Label(time, systemImage: "clock").font(.caption).foregroundStyle(.secondary)
//                }
            }
            Spacer()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 14).fill(Color.white))
    }
}
