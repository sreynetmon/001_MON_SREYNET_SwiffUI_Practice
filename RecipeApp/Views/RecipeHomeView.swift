//
//  RecipeHomeView.swift
//  RecipeApp
//
//  Created by shuni on 7/10/26.
//

import SwiftUI

struct RecipeHomeView: View {
    @State private var searchText = ""
    
    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    private var filteredRecipes: [Recipe] {
        if searchText.isEmpty {
            
            return sampleRecipes
        }
        
        return sampleRecipes.filter {
            $0.name.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    private var currentDate: String{
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY, MMM d"
        return formatter.string(from: Date()).uppercased()
    }
    
    private var header: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(currentDate)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
            Text("What's cooking?")
                .font(.system(size: 32, weight: .bold))
                .foregroundStyle(.primary)
        }
    }
    
    private var searchBar: some View{
        HStack(spacing: 8){
            Image(systemName: "magnifyingglass").foregroundStyle(.secondary)
            TextField("Search recipes", text: $searchText)
        }
        .padding(12)
        .background(Color(.secondarySystemGroupedBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 20){
                    header
                    
                    searchBar
                    
                    LazyVGrid(columns: columns,spacing: 20){
                        ForEach(filteredRecipes){ recipe in
                            NavigationLink{
                                RecipeDetailView(recipe: recipe)
                            } label: {
                                RecipeCard(recipe: recipe)
                            }
                           .buttonStyle(.plain)
                        }
                     }
                  }
                .padding(.horizontal, 16)
                .padding(.vertical, 16)
            }
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    RecipeHomeView()
}
