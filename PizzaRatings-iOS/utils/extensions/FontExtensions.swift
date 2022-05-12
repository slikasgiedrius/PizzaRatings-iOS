//
//  FontExtensions.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-05-12.
//

import Foundation
import SwiftUI

extension Font {
    static func regular() -> Font {
        return .custom(Fonts.Avenir.regular, size: Dimens.TextSize.regular)
    }
}
