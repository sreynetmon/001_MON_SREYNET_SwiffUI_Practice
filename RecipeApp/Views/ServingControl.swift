//
//  ServingControl.swift
//  RecipeApp
//
//  Created by shuni on 7/10/26.
//

import SwiftUI

struct ServingControl: View{
    @Binding var servings: Int
    
    var body: some View{
        HStack{
            Text("Servings").font(.headline)
            Spacer()
            HStack(spacing: 18){
                Button {
                    if servings > 1{
                        servings -= 1
                    }
                } label: {
                    Image(systemName: "minus").frame(width: 32, height: 32).backgroundStyle(Color(.systemGray6)).clipShape(Circle())
                }
                Text("\(servings)").fontWeight(.semibold).frame(minWidth: 20)
                Button{
                    servings += 1
                } label: {
                    Image(systemName: "plus").frame(width: 32, height: 32).background(Color(.systemGray6)).clipShape(Circle())
                }
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

#Preview {
    ServingControl(servings: .constant(2))
}
