//
//  RatingPicker.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-05-12.
//

import Foundation
import SwiftUI

struct RatingPicker: View {
    
    @State var selectedRating = 5
    var ratingConfirmed: (Int) -> Void
    
    var body: some View {
        VStack {
            Picker("Click me", selection: $selectedRating) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding([.leading, .trailing], 20)
            
            Text("You have selected: \(selectedRating)")
            Text("Ratings not working YET")
            
            Button(action: { ratingConfirmed(selectedRating) }){
                Text("Log")
            }
        }
    }
}

struct RatingPicker_Previews: PreviewProvider {
    static var previews: some View {
        RatingPicker(
            ratingConfirmed: { print($0) }
        )
    }
}
