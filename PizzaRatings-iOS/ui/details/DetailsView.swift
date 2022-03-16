//
//  DetailsView.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-01.
//

import SwiftUI

struct DetailsView: View {
    
    @ObservedObject var viewmodel = DetailsViewModel()
    
    var rating: Rating
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Pizzeria selected: \(rating.name)")
            Text("Average rating: \(rating.averageRating)")
            Text("Number of ratings: \(rating.numberOfRatings)")
            Text("Addresses: \(rating.addresses.toString())")
            Text("Ratings: \(rating.ratings.toString())")
            Text("My user id: N/A")
            Text("My rating is: N/A")
            Spacer()
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .navigationBarTitle(rating.name, displayMode: .inline)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(rating: getMockedRating())
    }
}
