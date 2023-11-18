//
//  TownQuestApp.swift
//  TownQuest
//
//  Created by Anish on 13/11/23.
//

import SwiftUI

@main
struct TownQuestApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
