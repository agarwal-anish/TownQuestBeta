//
//  SettingsRowView.swift
//  TownQuest
//
//  Created by Anish on 14/11/23.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    
    var name: String
    var content: String
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                Text(content)
            }
        }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "Anish")
}
