//
//  Joyful1Dedication.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/14/20.
//

import SwiftUI

struct Joyful1DedicationView: View {
    // Properties
    var prayer: Prayer
    
    // Body
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(joyfulMysteries[0].dedicationTitle!)
                    .font(.title2)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                Text(joyfulMysteries[0].dedicationText!)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                Spacer()
                NavigationLink(joyfulMysteries[0].buttonTitle, destination: JoyfulMystery1View(prayer: joyfulMysteries[0]))
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
            .navigationTitle(joyfulMysteries[0].navTitle)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarHidden(true)
    }
}

// Preview
struct Joyful1Dedication_Previews: PreviewProvider {
    static var previews: some View {
        Joyful1DedicationView(prayer: joyfulMysteries[0])
            .preferredColorScheme(.dark)
    }
}
