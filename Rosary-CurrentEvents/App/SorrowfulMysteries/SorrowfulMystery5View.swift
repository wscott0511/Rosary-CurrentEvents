//
//  SorrowfulMystery5View.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/16/20.
//

import SwiftUI

struct SorrowfulMystery5View: View {
    // Properties
    var prayer: Prayer
    @State var prayerNumber = 0
    
    // Body
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(sorrowfulMysteries5[prayerNumber].prayerTitle!)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                    .animation(.linear)
                Text(sorrowfulMysteries5[prayerNumber].prayer)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .animation(.linear)
                Spacer()
                if prayerNumber + 1 < sorrowfulMysteries5.count {
                    Button(prayer.buttonTitle) {
                        prayerNumber += 1
                    }
                    .foregroundColor(.accentColor)
                    .frame(minWidth: 750,
                           idealWidth: 750,
                           maxWidth: .infinity,
                           minHeight: 90,
                           idealHeight: 90,
                           maxHeight: 90,
                           alignment: .center)
                    .border(Color.accentColor, width: 2)
                } else {
                    // Change later on
                    NavigationLink("Restart", destination: OpeningView())
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
                
            }
            .navigationTitle(sorrowfulMysteries5[prayerNumber].navTitle)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Button(action: {
                if prayerNumber != 0 {
                    prayerNumber -= 1
                } else {
                    prayerNumber = 0
                }
            }) {
                Image(systemName: "arrow.left")
            }
            )}
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}

// Preview
struct SorrowfulMystery5View_Previews: PreviewProvider {
    static var previews: some View {
        SorrowfulMystery5View(prayer: sorrowfulMysteries5[0])
    }
}
