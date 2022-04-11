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
        } else {
            Text("Address list is not ready")
        }
    }
}
