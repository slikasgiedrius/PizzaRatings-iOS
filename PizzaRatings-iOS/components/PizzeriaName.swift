//
//  PizzeriaName.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-04-11.
//

import Foundation
import SwiftUI

struct PizzeriaName: View {
    var pizzeriaName: String
    
    var body: some View {
        Text(pizzeriaName)
            .font(.bold())
    }
}

struct Previews_PizzeriaName_Previews: PreviewProvider {
    static var previews: some View {
        PizzeriaName(pizzeriaName: "Test pizza")
    }
}
