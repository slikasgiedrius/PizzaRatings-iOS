//
//  HomeView.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-09-28.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.pizzeriasListDownloaded) { rating in
                NavigationLink(
                    destination: DetailsView(rating: rating),
                    label: {
                        HStak {
                            KFImage(URL(string: rating.logoUrl))
                                .resizable()
                                .frame(width: 80, height: 80)
                                .padding(4)
                            VStack(alignment: .leading) {
                                Text(rating.name)
                                    .fontWeight(.bold)
                                Text(rating.averageRatingText)
                                Text(rating.numberOfRatingsText)
                            }
                        }
                    }
                )
            }
            .navigationTitle("Pizza Ratings")
            .onAppear {
                viewModel.getPizzeriasList()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
