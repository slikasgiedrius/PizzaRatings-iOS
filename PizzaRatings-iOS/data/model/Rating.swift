//
//  Rating.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-09-30.
//

import Foundation

struct Rating: Identifiable, Codable {
//    @DocumentID var id: String? = UUID().uuidString
    var id: String? = UUID().uuidString
    let name: String
    let addresses: [String]?
    let ratings: [String: Int]?
    let logoUrl: String
    let favourited: [String]?
    
    //Additional variables (not from the response)
    var numberOfRatings: Int {
        ratings?.count ?? 0
    }
    var sumOfRatings: Int {
        ratings?.reduce(0, { partialResult, rating in
            partialResult + rating.value
        }) ?? 0
    }
    var averageRating: Double {
        Double(sumOfRatings) / Double(numberOfRatings)
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case addresses
        case ratings
        case logoUrl
        case favourited
    }
}
