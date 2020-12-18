//
//  LightMystery4View.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/17/20.
//

import SwiftUI

struct LightMystery4View: View {
    var prayer: Prayer
    @State var prayerNumber = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(mysteryOfLight4[prayerNumber].prayerTitle!)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                    .animation(.linear)
                Text(mysteryOfLight4[prayerNumber].prayer)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .animation(.linear)
                Spacer()
                if prayerNumber + 1 < mysteryOfLight4.count {
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
                    NavigationLink("Next Prayer", destination: LightMysteryMystery5(prayer: mysteryOfLight5[0]))
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
            .navigationTitle(prayer.navTitle)
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

struct LightMystery4View_Previews: PreviewProvider {
    static var previews: some View {
        LightMystery4View(prayer: mysteryOfLight4[0])
            
    }
}
