//
//  PrayerModel.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 11/25/20.
//

import SwiftUI

struct Prayer: Identifiable {
    var id = UUID()
    var navTitle: String
    var image: String? = nil
    var mysteryTitle: String? = nil
    var mysteryText: String? = nil
    var dedicationTitle: String? = nil
    var dedicationText: String? = nil
    var prayerTitle: String? = nil
    var prayer: String
    var buttonTitle: String
    
}
