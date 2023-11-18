//
//  TownHeaderView.swift
//  TownQuest
//
//  Created by Anish on 14/11/23.
//

import SwiftUI

struct TownHeaderView: View {
    // MARK: - PROPERTIES
    
    var town: Town
    
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: town.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(town.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            
            
        } //: ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    TownHeaderView(town: townData[0])
}
