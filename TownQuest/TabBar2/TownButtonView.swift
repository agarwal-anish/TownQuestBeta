//
//  TownButtonView.swift
//  TownQuest
//
//  Created by Anish on 14/11/23.
//

import SwiftUI

struct TownButtonView: View {
    // MARK: - PROPERTIES
    
    var town: Town
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
                Button(action: {
                    // ACTION
                }) {
                    Text("Would you like to nurture \(town.title)?")
                        .fontWeight(.heavy)
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .foregroundColor(town.gradientColors[1])
                } //: BUTTON
            } //: BOX
        .padding(.leading, 20)
    }
}

// MARK: - Preview

#Preview {
    TownButtonView(town: townData[0])
}
