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
    var confirmRatingAction: (Int) -> Void
    
    var body: some View {
        VStack {
            Picker("Click me", selection: $selectedRating) {
                Text("1").font(.regular()).tag(1)
                Text("2").font(.regular()).tag(2)
                Text("3").font(.regular()).tag(3)
                Text("4").font(.regular()).tag(4)
                Text("5").font(.regular()).tag(5)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding([.leading, .trailing], 20)
            
            Button(action: { confirmRatingAction(selectedRating) }){
                Text("Log").font(.regular())
            }
        }
    }
}

struct RatingPicker_Previews: PreviewProvider {
    static var previews: some View {
        RatingPicker(
            confirmRatingAction: { print($0) }
        )
    }
}
