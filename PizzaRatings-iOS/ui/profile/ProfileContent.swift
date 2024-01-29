//
//  ProfileContent.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-03-25.
//

import Foundation
import SwiftUI

struct ProfileContent: View {
    var body: some View {
        
        ZStack {
            VStack {
                Text("Profile screen")
                    .font(.regular())
                
                Button("Login") {
                    print("Login button is presses on Profile screen")
                }
            }
        }
    }
}

struct ProfileContent_Previews: PreviewProvider {
    static var previews: some View {
        ProfileContent()
    }
}
