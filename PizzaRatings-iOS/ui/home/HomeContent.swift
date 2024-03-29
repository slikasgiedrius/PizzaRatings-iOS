//
//  HomeContent.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius Slikas on 2022-03-25.
//

import Foundation
import SwiftUI
import Kingfisher

struct HomeContent: View {
    var ratings = [Rating]()

    var body: some View {
        List(ratings) { rating in
            NavigationLink(
                destination: DetailsView(rating: rating),
                label: {
                    HStack {
                        KFImage(URL(string: rating.logoUrl))
                            .resizable()
                            .frame(width: 80, height: 80)
                            .padding(Dimens.Padding.small)
                           
                        VStack(alignment: .leading) {
                            PizzeriaName(pizzeriaName: rating.name)
                            AverageRatingCell(
                                isFromHomeScreen: true,
                                averageRating: rating.averageRating
                            )
                            NumberOfRatings(numberOfRatings: rating.numberOfRatings)
                        }
                    }
                }
            )
        }
    }
}

struct HomeContent_Previews: PreviewProvider {
    static var previews: some View {
        HomeContent(ratings: getMockedListOfRatings())
    }
}
