//
//  SettingsView.swift
//  TownQuest
//
//  Created by Anish on 14/11/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Frcutus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Discover unique towns and choose the best one to nurture, look at their resources, defence and attack strategies and more! Watch out for the more rare resources like ore's. Different types of ports have different abilites, fire's ones are the strongest. ")
                                .font(.footnote)
                        }
                    }
                    
                    
                    // MARK: - Section 2
                    
                    GroupBox(
                      label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                      Divider().padding(.vertical, 4)
                      
                      Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                        .padding(.vertical, 8)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                      
                      Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                          Text("Restarted".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color.green)
                        } else {
                          Text("Restart".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color.secondary)
                        }
                      }
                      .padding()
                      .background(
                        Color(UIColor.tertiarySystemBackground)
                          .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                      )
                    }
                    
                    
                    // MARK: - Section 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        
                        
                        SettingsRowView(name: "Developer", content: "Anish")
                        SettingsRowView(name: "Designer", content: "Anish")
                        SettingsRowView(name: "Compatibility", content: "iOS 17")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "No. of Towns", content: "5")
                    }
                    
                    
                    
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
                    .padding())
                
            } //: SCROLL
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsView()
}
