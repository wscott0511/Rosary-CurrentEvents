//
//  SorrowfulMysteryMystery1View.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/16/20.
//

import SwiftUI

struct SorrowfulMysteryMystery1View: View {
    // Properties
    var prayer: Prayer
    
    // Body
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
                NavigationLink(prayer.buttonTitle, destination: Sorrowful1Dedication(prayer: sorrowfulMysteries1[0]))
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
struct SorrowfulMysteryMystery1View_Previews: PreviewProvider {
    static var previews: some View {
        SorrowfulMysteryMystery1View(prayer: sorrowfulMysteries1[0])
    }
}
