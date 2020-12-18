//
//  JoyfulMysteryMystery2.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/14/20.
//

import SwiftUI

struct JoyfulMysteryMystery2: View {
    // Properties
    var prayer: Prayer
    
    // Body
    var body: some View {
        NavigationView {
            VStack {
                Image("secondJoyfulMystery")
                    .resizable()
                    .frame(width: 200, height: 250, alignment: .center)
                    .padding(.top, 40)
                Spacer()
                Text(joyfulMysteries2[0].mysteryTitle!)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Text(joyfulMysteries2[0].mysteryText!)
                    .font(.body)
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(joyfulMysteries2[0].buttonTitle, destination: Joyful2DedicationView(prayer: joyfulMysteries2[0]))
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
            .navigationTitle(joyfulMysteries2[0].navTitle)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarHidden(true)
    }
}

// Preview
struct JoyfulMysteryMystery2_Previews: PreviewProvider {
    static var previews: some View {
        JoyfulMysteryMystery2(prayer: joyfulMysteries2[0])
            .preferredColorScheme(.dark)
    }
}
