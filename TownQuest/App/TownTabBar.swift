//
//  TownTabBar.swift
//  TownQuest
//
//  Created by Anish on 14/11/23.
//

import SwiftUI

struct TownTabBar: View {
    
    var town: Town
    
    var body: some View {
        TabView {
            
            // MARK: - CONTENT
            TownDetailView(town: town)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            // MARK: - Account
            
            TownResourcesView(town: town)
                .tabItem {
                    Image(systemName: "snowboard")
                    Text("Resources")
                    
                }
            
            // MARK: - WesternStall

                .tabItem {
                    Image(systemName: "sidebar.left")
                    Text("WesternStall")
                }
            
            // MARK: - OrderQueue
            
                .tabItem {
                    Image(systemName: "fork.knife.circle")
                    Text("OrderQueue")
                }
            
            // MARK: - OrderConfirmation
 
                .tabItem {
                    Image(systemName: "paperplane")
                    Text("Confirmation")
                }

        } // TAB
    }
}

#Preview {
    TownTabBar(town: townData[1])
}
