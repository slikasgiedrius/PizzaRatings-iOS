//
//  Rating.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-09-30.
//

import Foundation
import FirebaseFirestoreSwift

struct Rating: Identifiable, Codable, Comparable {
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
    
    enum CodingKeys: String, CodingKey {
        case name
        case addresses
        case ratings
        case logoUrl
    }
    
    static func < (lhs: Rating, rhs: Rating) -> Bool {
        lhs.averageRating < rhs.averageRating
    }
}
