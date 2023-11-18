//
//  TownDetailView.swift
//  TownQuest
//
//  Created by Anish on 14/11/23.
//

import SwiftUI

struct TownDetailView: View {
    // MARK: - PROPERTIES
    
    var town: Town
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20){
                    // HEADER
                    TownHeaderView(town: town)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(town.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(town.gradientColors[1])
                        
                        // HEADLINE
                        Text(town.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // RESOURCES
                        TownDetailsView(town: town)
                        
                        // SUBHEADING
                        Text("Explore \(town.title.uppercased())")
                            .fontWeight(.bold)
                            .foregroundColor(town.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(town.description)
                            .multilineTextAlignment(.leading)
                        
                        // BUTTON
                        TownButtonView(town: town)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(town.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview
#Preview {
    TownDetailView(town: townData[0])
}
