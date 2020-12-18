//
//  JoyfulMystery3View.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/15/20.
//

import SwiftUI

struct JoyfulMystery3View: View {
    // Properties
    var prayer: Prayer
    
    @State var prayerNumber = 0
    
    // Body
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(joyfulMysteries3[prayerNumber].prayerTitle!)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                    .animation(.linear)
                Text(joyfulMysteries3[prayerNumber].prayer)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .animation(.linear)
                Spacer()
                if prayerNumber + 1 < joyfulMysteries3.count {
                    Button(joyfulMysteries3[prayerNumber].buttonTitle) {
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
                    NavigationLink("Next Prayer", destination: JoyfulMysteryMystery4View(prayer: joyfulMysteries4[0]))
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
            .navigationTitle(joyfulMysteries3[prayerNumber].navTitle)
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
struct JoyfulMystery3View_Previews: PreviewProvider {
    static var previews: some View {
        JoyfulMystery3View(prayer: joyfulMysteries3[0])
            .preferredColorScheme(.dark)
    }
}
