//
//  HomeView.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-09-28.
//

import SwiftUI

struct HomeView: View {
    
//    @ObservedObject var viewModel = HomeViewModel()
    
    @EnvironmentObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.pizzeriasListDownloaded) { rating in
                NavigationLink(
                    destination: DetailsView(rating: rating),
                    label: {
                        HStack {
                            Image(systemName: "earbuds")
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
