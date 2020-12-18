//
//  LightMysteryMystery2.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/17/20.
//

import SwiftUI

struct LightMysteryMystery2: View {
    var prayer: Prayer
    
    var body: some View {
        NavigationView {
            VStack {
                Image(prayer.image!)
                    .resizable()
                    .frame(width: 200, height: 250, alignment: .center)
                    .padding(.top, 40)
                Spacer()
                Text(prayer.mysteryTitle!)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Text(prayer.mysteryText!)
                    .font(.body)
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(prayer.buttonTitle, destination: Light2Dedication(prayer: mysteryOfLight2[0]))
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
            .navigationTitle(prayer.navTitle)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarHidden(true)
    }
}

struct LightMysteryMystery2_Previews: PreviewProvider {
    static var previews: some View {
        LightMysteryMystery2(prayer: mysteryOfLight2[0])
    }
}
