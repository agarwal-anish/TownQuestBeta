//
//  OnboardingView.swift
//  TownQuest
//
//  Created by Anish on 13/11/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var town: [Town] = townData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            
            ForEach(town[0...1]) { item in
                TownCardView(town: item)
            } // LOOP
        } // TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
#Preview {
    OnboardingView(town: townData)
}
