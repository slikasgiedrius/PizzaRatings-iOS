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
        ScrollView {
            Text(rating.name)
            Text(rating.addresses.description)
            Text(rating.ratings.description)
            Text(rating.logoUrl)
            Text("Number of ratings: \(rating.numberOfRatings)")
        }.navigationTitle(rating.name)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(rating: getMockerRating())
    }
}
