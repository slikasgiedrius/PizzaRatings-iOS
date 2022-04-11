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
        } else {
            Text("No ratings yet")
        }
    }
}
