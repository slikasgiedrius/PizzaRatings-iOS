//
//  Addresses.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-04-08.
//

import Foundation
import SwiftUI

struct Addresses: View {
    var addresses: [String]?
    
    var body: some View {
        if addresses != nil {
            Text("Addresses: \(addresses!.toString())")
                .font(.regular())
        } else {
            Text("Address list is not ready")
                .font(.regular())
        }
    }
}

struct Addresses_Preview: PreviewProvider {
    static var previews: some View {
        Addresses(addresses: getMockedRating().addresses)
    }
}
