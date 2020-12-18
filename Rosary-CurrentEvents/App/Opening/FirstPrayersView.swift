//
//  FirstPrayersView.swift
//  Rosary-CurrentEvents
//
//  Created by Ryan Scott on 11/30/20.
//

import SwiftUI

struct FirstPrayersView: View {
    // MARK: - Properties
    var prayer: Prayer
    @State var prayerNumber = 0
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(prayerData[prayerNumber].prayer)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .animation(.linear)
                Spacer()
                if prayerNumber + 1 < prayerData.count {
                    Button(prayerData[prayerNumber].buttonTitle) {
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
                    NavigationLink("Next Prayer", destination: ChooseDayview())
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
            .navigationTitle(prayerData[prayerNumber].navTitle)
            .navigationBarItems(leading: Button(action: {
                if prayerNumber + 1 > prayerData.count {
                    prayerNumber -= 1
                } else {
                    prayerNumber = 0
                    print("End of line")
                }
            }) {
                Image(systemName: "arrow.left")
                    .foregroundColor(.accentColor)
            }
            )}
//            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
}


// MARK: - Preview
struct FirstPrayersView_Previews: PreviewProvider {
    static var previews: some View {
        FirstPrayersView(prayer: prayerData[0])
            .preferredColorScheme(.dark)
    }
}
