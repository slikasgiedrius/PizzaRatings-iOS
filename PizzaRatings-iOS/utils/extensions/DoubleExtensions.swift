//
//  DoubleExtensions.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-01.
//

import Foundation

extension Double {
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 16
        return String(formatter.string(from: number) ?? "")
    }
}
