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
    }
    
    func convertToText(_ numberOfRatings: Int) -> String {
        switch numberOfRatings {
        case 0: return "No ratings"
        case 1: return "\(numberOfRatings) rating"
        default: return "\(numberOfRatings) ratings"
        }
    }
}
