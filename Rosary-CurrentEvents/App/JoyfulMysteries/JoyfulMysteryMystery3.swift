//
//  JoyfulMysteryMystery3.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/15/20.
//

import SwiftUI

struct JoyfulMysteryMystery3: View {
    // Properties
    var prayer: Prayer
    
    // Body
    var body: some View {
        NavigationView {
            VStack {
                Image("thirdJoyfulMystery")
                    .resizable()
                    .frame(width: 200, height: 250, alignment: .center)
                    .padding(.top, 40)
                Spacer()
                Text(joyfulMysteries3[0].mysteryTitle!)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Text(joyfulMysteries3[0].mysteryText!)
                    .font(.body)
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(joyfulMysteries3[0].buttonTitle, destination: Joyful3DedicationView(prayer: joyfulMysteries3[0]))
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
            .navigationTitle(joyfulMysteries3[0].navTitle)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarHidden(true)
    }
}

// Preview
struct JoyfulMysteryMystery3_Previews: PreviewProvider {
    static var previews: some View {
        JoyfulMysteryMystery3(prayer: joyfulMysteries3[0])
            .preferredColorScheme(.dark)
    }
}
