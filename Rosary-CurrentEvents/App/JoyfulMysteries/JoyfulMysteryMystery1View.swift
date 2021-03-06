//
//  Joyful1.0.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/14/20.
//

import SwiftUI

struct JoyfulMysteryMystery1View: View {
    //Properties
    var prayer: Prayer
    
    //Body
    var body: some View {
        NavigationView {
            VStack {
                Image("firstJoyfulMystery")
                    .resizable()
                    .frame(width: 200, height: 250, alignment: .center)
                    .padding(.top, 40)
                Spacer()
                Text(joyfulMysteries[0].mysteryTitle!)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Text(joyfulMysteries[0].mysteryText!)
                    .font(.body)
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(joyfulMysteries[0].buttonTitle, destination: Joyful1DedicationView(prayer: joyfulMysteries[0]))
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
struct JoyfulMysteryMystery1View_Previews: PreviewProvider {
    static var previews: some View {
        JoyfulMysteryMystery1View(prayer: joyfulMysteries[0])
            .preferredColorScheme(.dark)
    }
}
