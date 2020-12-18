//
//  MysteryVeiw.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 11/23/20.
//

import SwiftUI

struct MysteryVeiw: View {
    
    var prayer: Prayer
    var prayerNumber: Int = 1
    mutating func updatePrayer() {
        if prayerNumber + 1 < prayerData.count {
            prayerNumber += 1
        } else {
//            NavigationLink(destination: )
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Image(prayer.image!)
                    .resizable()
                    .frame(width: 200, height: 300, alignment: .center)
                Text(prayer.mysteryTitle!)
                    .padding(.top, 30)
                Text(prayer.mysteryText!)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                Button(action: {
                    
                }, label: {
                    Text(prayer.buttonTitle)
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(6)
                        
                })
                .foregroundColor(.black)
                .frame(minWidth: 750,
                       idealWidth: 750,
                       maxWidth: .infinity,
                       minHeight: 90,
                       idealHeight: 90,
                       maxHeight: 90,
                       alignment: .center)
                .border(Color.black, width: 2)
            }
            .navigationBarTitle(prayer.navTitle, displayMode: .inline)
            }
            
        }
    }


struct MysteryVeiw_Previews: PreviewProvider {
    static var previews: some View {
        MysteryVeiw(prayer: joyfulMysteries[0])
    }
}
