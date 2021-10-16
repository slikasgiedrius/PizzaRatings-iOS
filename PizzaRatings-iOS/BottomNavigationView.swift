//
//  BottomNavigationView.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-16.
//

import SwiftUI

struct BottomNavigationView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            FavouritesView()
                .tabItem {
                    VStack {
                        Image(systemName: "star")
                        Text("Favourites")
                    }
                }
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
        }
    }
}

struct BottomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationView()
    }
}
