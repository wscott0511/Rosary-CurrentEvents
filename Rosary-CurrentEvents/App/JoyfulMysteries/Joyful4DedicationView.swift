//
//  Joyful4DedicationView.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/15/20.
//

import SwiftUI

struct Joyful4DedicationView: View {
    // Properties
    var prayer: Prayer
    
    // Body
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(joyfulMysteries4[0].dedicationTitle!)
                    .font(.title2)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                Text(joyfulMysteries4[0].dedicationText!)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                Spacer()
                NavigationLink(joyfulMysteries4[0].buttonTitle, destination: JoyfulMystery4View(prayer: joyfulMysteries4[0]))
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
            .navigationTitle(joyfulMysteries4[0].navTitle)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarHidden(true)
    }
}

// Preview
struct Joyful4DedicationView_Previews: PreviewProvider {
    static var previews: some View {
        Joyful4DedicationView(prayer: joyfulMysteries4[0])
            .preferredColorScheme(.dark)
    }
}
