//
//  Rating.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-09-30.
//

import Foundation
import FirebaseFirestoreSwift

struct Rating: Identifiable, Codable {
    @DocumentID var id: String? = UUID().uuidString
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
    var numberOfRatingsText: String {
        switch numberOfRatings {
        case 0: return "No ratings"
        case 1: return "\(numberOfRatings) rating"
        default: return "\(numberOfRatings) ratings"
        }
    }
    var averageRatingText: String {
        return "\(averageRating.removeZerosFromEnd()) average rating"
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case addresses
        case ratings
        case logoUrl
    }
}
