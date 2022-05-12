//
//  AverageRating.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-04-11.
//

import Foundation
import SwiftUI

struct AverageRatingCell: View {
    var isFromHomeScreen: Bool = false
    var averageRating: Double
    
    var body: some View {
        if isFromHomeScreen {
            HomeScreenAverageRatingCell(averageRating: averageRating)
        } else {
            DetailsScreenAverageRatingCell(averageRating: averageRating)
        }
    }
}

struct HomeScreenAverageRatingCell: View {
    var averageRating: Double
    
    var body: some View {
        if averageRating == 0.0 || averageRating.isNaN {
            //Do nothing (remove the Text)
        } else {
            Text("\(averageRating.removeZerosFromEnd()) average rating")
        }
    }
}

struct DetailsScreenAverageRatingCell: View {
    var averageRating: Double
    
    var body: some View {
        if averageRating == 0.0 || averageRating.isNaN {
            Text("There is no average rating")
        } else {
            Text("\(averageRating.removeZerosFromEnd()) average rating")
        }
    }
}
