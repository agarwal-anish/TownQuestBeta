//
//  ContentView.swift
//  TownQuest
//
//  Created by Anish on 13/11/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var town: [Town] = townData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(town.shuffled()) { item in
                    NavigationLink(destination: TownTabBar(town: item)) {
                        TownRowView(town: item)
                            .padding(.vertical, 4)
                    } // NAVIGATION
                } // LOOP
            } // List
            .navigationTitle("Towns")
            .navigationBarItems(trailing:
            Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            
            )
        } // NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView(town: townData)
}
