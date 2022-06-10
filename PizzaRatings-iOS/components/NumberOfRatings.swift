//
//  NumberOfRatings.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-04-11.
//

import Foundation
import SwiftUI

struct NumberOfRatings: View {
    var numberOfRatings: Int
    
    var body: some View {
        Text(convertToText(numberOfRatings))
            .font(.regular())
    }
    
    func convertToText(_ numberOfRatings: Int) -> String {
        switch numberOfRatings {
        case 0: return "No ratings"
        case 1: return "\(numberOfRatings) rating"
        default: return "\(numberOfRatings) ratings"
        }
    }
}

struct NumberOfRatings_Preview: PreviewProvider {
    static var previews: some View {
        NumberOfRatings(numberOfRatings: 5)
    }
}
