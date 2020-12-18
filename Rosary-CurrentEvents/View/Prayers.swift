//
//  Prayers.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 11/30/20.
//

import SwiftUI

struct Prayers: View {
    // MARK: - Properties
    var prayer: Prayer
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            Text(prayer.prayer)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            NextButtonView(prayer: prayerData[0])
        }
        .navigationTitle(prayer.navTitle)
    }
}

// MARK: - Preview
struct Prayers_Previews: PreviewProvider {
    static var previews: some View {
        Prayers(prayer: prayerData[0])
    }
}
