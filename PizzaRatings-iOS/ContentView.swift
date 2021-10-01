//
//  ContentView.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-09-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let testRating = Rating(
            name: "Dodo Pizza",
            addresses: ["Antakalnio g. 41", "Ozo g. 18"],
            ratings: ["92bMFbKkwtZu5MXjiWmJnMvzKM33": 4, "KVzvzHPhgoZE2T3hH7yLz6pyNol2": 5],
            logoUrl: "https://drive.google.com/thumbnail?id=1jgJb_Ev4QeAbYTv-q2lnbXW7SieLAqNq"
        )
        
        HStack() {
            Spacer()
            VStack {
                Spacer()
                Image("dodo")
                Text("Pizzeria selected: \(testRating.name)")
                Text("Average rating: \(testRating.averageRating.rounded(toPlaces: 2).removeZerosFromEnd())")
                Text("Number of ratings: \(testRating.numberOfRatings)")
                Text("Addresses: \(testRating.addresses.description)")
                Text("Ratings: \(testRating.ratings.description)")
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
