//
//  TownRowView.swift
//  TownQuest
//
//  Created by Anish on 14/11/23.
//

import SwiftUI

struct TownRowView: View {
    // MARK: - PROPERTIES
    
    var town: Town
    
    // MARK: - BODY
    var body: some View {
        HStack {
            // Image
            Image(town.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: town.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(town.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(town.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        } // HSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    TownRowView(town: townData[0])
}
