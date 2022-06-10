//
//  Ratings.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-04-11.
//

import Foundation
import SwiftUI

struct Ratings: View {
    var ratings: [String: Int]?
    
    var body: some View {
        if ratings != nil {
            Text("Ratings: \(ratings!.toString())")
                .font(.regular())
        } else {
            Text("No ratings yet")
                .font(.regular())
        }
    }
}

struct Ratings_Preview: PreviewProvider {
    static var previews: some View {
        Ratings(ratings: getMockedRating().ratings)
    }
}
