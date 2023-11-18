//
//  TownResourcesView.swift
//  TownQuest
//
//  Created by Anish on 14/11/23.
//

import SwiftUI

struct TownResourcesView: View {
    // MARK: - PROPERTIES
    
    var town: Town
    
    let resources: [String] = ["Ore", "Rice Sacks", "Plorts"]
    let caveResources: [String] = ["Coins", "Coal", "Plots"]
    
    // MARK: - BODY
    var body: some View {
        ScrollView {
        VStack {
            Spacer()
            
                VStack {
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
                    
                    GroupBox() {
                        DisclosureGroup("Caves..."){
                            ForEach(0..<caveResources.count, id: \.self) { item in
                                Divider()
                                    .padding(.vertical, 2)
                                
                                HStack {
                                    Group {
                                        Image(systemName: "mountain.2")
                                        Text(caveResources[item])
                                    }
                                    .foregroundColor(town.gradientColors[1])
                                    .font(.system(.body).bold())
                                    
                                    Spacer(minLength: 30)
                                    
                                    Text(town.details2[item])
                                        .multilineTextAlignment(.center)
                                        .fontWeight(.bold)
                                }
                            }
                        }//: GROUP
                    } //: BOX
    
                } //: VSTACK
            } //: VSTACK
        } //: SCROLL
        .padding()
    }
}

#Preview {
    TownResourcesView(town: townData[0])
}
