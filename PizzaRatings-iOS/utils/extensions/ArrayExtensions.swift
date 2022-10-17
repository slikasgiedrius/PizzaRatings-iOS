//
//  StringExtensions.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-03-16.
//

import Foundation

extension Array {
    func toString() -> String {
        return "\(self)"
    }
    
    func isNotEmpty() -> Bool {
        return !self.isEmpty
    }
}
