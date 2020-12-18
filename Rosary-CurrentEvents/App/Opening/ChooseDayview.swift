//
//  ChooseDayview.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 12/1/20.
//

import SwiftUI

struct ChooseDayview: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                Spacer()
                NavigationLink("Monday & Saturday", destination: JoyfulMysteryMystery1View(prayer: joyfulMysteries[0]))
                    .foregroundColor(.accentColor)
                    .frame(minWidth: 750,
                           idealWidth: 750,
                           maxWidth: .infinity,
                           minHeight: 90,
                           idealHeight: 90,
                           maxHeight: 90,
                           alignment: .center)
                    .border(Color.accentColor, width: 2)
                
                NavigationLink("Tuesday & Friday", destination: SorrowfulMysteryMystery1View(prayer: sorrowfulMysteries1[0]))
                .foregroundColor(.accentColor)
                .frame(minWidth: 750,
                       idealWidth: 750,
                       maxWidth: .infinity,
                       minHeight: 90,
                       idealHeight: 90,
                       maxHeight: 90,
                       alignment: .center)
                .border(Color.accentColor, width: 2)
                
                NavigationLink("Wednesday & Sunday", destination: GloriousMysteryMystery1(prayer: gloriousMysteries1[0]))
                .foregroundColor(.accentColor)
                .frame(minWidth: 750,
                       idealWidth: 750,
                       maxWidth: .infinity,
                       minHeight: 90,
                       idealHeight: 90,
                       maxHeight: 90,
                       alignment: .center)
                .border(Color.accentColor, width: 2)
                
                NavigationLink("Thursday", destination: LightMysteryMystery1(prayer: mysteryOfLight1[0]))
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
            .navigationTitle("Choose the Day")
            .font(.title)            
        }
        .navigationBarHidden(true)
    }
}

struct ChooseDayview_Previews: PreviewProvider {
    static var previews: some View {
        ChooseDayview()
            .preferredColorScheme(.dark)
    }
}
