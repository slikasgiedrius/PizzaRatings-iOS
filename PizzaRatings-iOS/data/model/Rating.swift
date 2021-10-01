//
//  Rating.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-09-30.
//

import Foundation
import SwiftUI

struct Rating {
    let name: String
    let addresses: [String]
    let ratings: [String: Int]
    let logoUrl: String
    var numberOfRatings: Int {
        ratings.count
    }
    var sumOfRatings: Int {
        ratings.reduce(0, { partialResult, rating in
            partialResult + rating.value
        })
    }
    var averageRating: Double {
        Double(sumOfRatings) / Double(numberOfRatings)
    }
}
