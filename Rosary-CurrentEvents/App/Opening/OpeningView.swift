//
//  OpeningView.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/1/20.
//

import SwiftUI

struct OpeningView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                Image("hiclipart.com")
                    .background(Color.white)
                NavigationLink("Lets Get Started", destination: FirstPrayersView(prayer: prayerData[0]))
                .foregroundColor(.accentColor)
                .frame(minWidth: 750,
                       idealWidth: 750,
                       maxWidth: .infinity,
                       minHeight: 90,
                       idealHeight: 90,
                       maxHeight: 90,
                       alignment: .center)
                .border(Color.accentColor, width: 2)
            }
            .navigationBarTitle("The Holy Rosary")
        }
    }
}

// MARK: - Preview
struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
            .preferredColorScheme(.dark)
    }
}
