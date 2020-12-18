//
//  ContentView.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var prayer: Prayer
    // MARK: - Body
    var body: some View {
        
        OpeningView()
        
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(prayer: prayerData[0])
    }
}
