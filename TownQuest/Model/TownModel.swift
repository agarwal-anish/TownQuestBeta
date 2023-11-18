//
//  TownModel.swift
//  TownQuest
//
//  Created by Anish on 14/11/23.
//

import SwiftUI

// MARK: - Town data model

struct Town: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var details: [String]
    var cardImage: String?
    var cardTitle: String?
    var cardHeadline: String?
    var details2: [String]
}
