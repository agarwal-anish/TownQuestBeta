//
//  TownDetailsView.swift
//  TownQuest
//
//  Created by Anish on 14/11/23.
//

import SwiftUI

struct TownDetailsView: View {
    // MARK: - PROPERTIES
    
    var town: Town
    
    let resources: [String] = ["Ore", "Rice Sacks", "Plorts"] // ADD MORE RESOURCES
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Resources..."){
                ForEach(0..<resources.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "snowboard.fill")
                            Text(resources[item])
                        }
                        .foregroundColor(town.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 30)
                        
                        Text(town.details[item])
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                    }
                }
            }//: GROUP
        } //: BOX
    }
}

// MARK: - PREVIEW
#Preview {
    TownDetailsView(town: townData[0])
}
