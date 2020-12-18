//
//  Sorrowful5Dedication.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/16/20.
//

import SwiftUI

struct Sorrowful5Dedication: View {
    // Properties
    var prayer: Prayer
    
    // Body
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
                NavigationLink(prayer.buttonTitle, destination: SorrowfulMystery5View(prayer: sorrowfulMysteries5[0]))
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

// Preview
struct Sorrowful5Dedication_Previews: PreviewProvider {
    static var previews: some View {
        Sorrowful5Dedication(prayer: sorrowfulMysteries5[0])
    }
}
