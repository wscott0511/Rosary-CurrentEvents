//
//  NextButtonView.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 11/25/20.
//

import SwiftUI

struct NextButtonView: View {
    // MARK: - Properties
    var prayer: Prayer
    var prayerNumber = 0
    
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            if prayerNumber + 1 < prayerData.count {
                
            }
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
}

// MARK: - Preview
struct NextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonView(prayer: prayerData[0])
            .previewLayout(.sizeThatFits)
    }
}
