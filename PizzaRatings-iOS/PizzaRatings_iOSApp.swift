//
//  PizzaRatings_iOSApp.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-09-28.
//

import SwiftUI
import Firebase

@main
struct PizzaRatings_iOSApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            BottomNavigationView()
                .environmentObject(HomeViewModel())
        }
    }
}
