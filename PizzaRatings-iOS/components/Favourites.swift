//
//  Favourites.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-10-17.
//

import Foundation
import SwiftUI

struct Favourites: View {
    var favouritedBy: [String]?
    
    var body: some View {
        if favouritedBy != nil && favouritedBy!.isNotEmpty() {
            Text("Favourited by: \(favouritedBy!.toString())")
                .font(.regular())
        } else {
            //Do nothing, because item is not favourited by anyone
        }
    }
}

struct Favourites_Preview: PreviewProvider {
    static var previews: some View {
        Favourites(favouritedBy: getMockedRating().favourited)
    }
}
