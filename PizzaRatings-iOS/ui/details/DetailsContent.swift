//
//  DetailsContent.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-03-18.
//

import Foundation
import SwiftUI
import Kingfisher

struct DetailsContent: View {
    var rating: Rating
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                KFImage(URL(string: rating.logoUrl))
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(4)
                Spacer()
            }
            PizzeriaName(pizzeriaName: rating.name)
            AverageRatingCell(averageRating: rating.averageRating)
            NumberOfRatings(numberOfRatings: rating.numberOfRatings)
            Addresses(addresses: rating.addresses)
            Ratings(ratings: rating.ratings)
            Text("My user id: N/A")
            Text("My rating is: N/A")
            Spacer()
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .navigationBarTitle(rating.name, displayMode: .inline)
    }
}

struct DetailsContent_Previews: PreviewProvider {
    static var previews: some View {
        DetailsContent(rating: getMockedRating())
    }
}

