//
//  JoyfulMysteryMystery4View.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/15/20.
//

import SwiftUI

struct JoyfulMysteryMystery4View: View {
    // Properties
    var prayer: Prayer
    
    // Body
    var body: some View {
        NavigationView {
            VStack {
                Image(joyfulMysteries4[0].image!)
                    .resizable()
                    .frame(width: 200, height: 250, alignment: .center)
                    .padding(.top, 40)
                Spacer()
                Text(joyfulMysteries4[0].mysteryTitle!)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Text(joyfulMysteries4[0].mysteryText!)
                    .font(.body)
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(joyfulMysteries4[0].buttonTitle, destination: Joyful4DedicationView(prayer: joyfulMysteries4[0]))
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
struct JoyfulMysteryMystery4View_Previews: PreviewProvider {
    static var previews: some View {
        JoyfulMysteryMystery4View(prayer: joyfulMysteries4[0])
            .preferredColorScheme(.dark)
    }
}
