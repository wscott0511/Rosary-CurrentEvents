//
//  GloriousMystery5View.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/17/20.
//

import SwiftUI

struct GloriousMystery5View: View {
    var prayer: Prayer
    @State var prayerNumber = 0
    
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(gloriousMysteries5[prayerNumber].prayerTitle!)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                    .animation(.linear)
                Text(gloriousMysteries5[prayerNumber].prayer)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .animation(.linear)
                Spacer()
                if prayerNumber + 1 < gloriousMysteries4.count {
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
            .navigationTitle(gloriousMysteries5[prayerNumber].navTitle)
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

struct GloriousMystery5View_Previews: PreviewProvider {
    static var previews: some View {
        GloriousMystery5View(prayer: gloriousMysteries5[0])
    }
}
