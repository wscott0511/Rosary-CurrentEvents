//
//  Light3Dedication.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/17/20.
//

import SwiftUI

struct Light3Dedication: View {
    var prayer: Prayer
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(prayer.dedicationTitle!)
                    .font(.title2)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                Text(prayer.dedicationText!)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                Spacer()
                NavigationLink(prayer.buttonTitle, destination: LightMystery3View(prayer: mysteryOfLight3[0]))
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

struct Light3Dedication_Previews: PreviewProvider {
    static var previews: some View {
        Light3Dedication(prayer: mysteryOfLight3[0])
    }
}
