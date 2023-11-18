//
//  StartButtonView.swift
//  TownQuest
//
//  Created by Anish on 13/11/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 0) {
                Text("Start")
                
                Image(systemName: "arrowshape.right.fill")
                    .imageScale(.large)
                    .padding(.horizontal, 5)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
            Capsule()
                .strokeBorder(.white, lineWidth: 1.25)
            )
        } // BUTTON
        .accentColor(.white)
    }
}

// MARK: - Preview
#Preview {
    StartButtonView()
}
