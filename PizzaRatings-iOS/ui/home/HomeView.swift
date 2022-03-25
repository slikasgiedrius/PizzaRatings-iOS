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
            HomeContent(ratings: viewModel.pizzeriasListDownloaded)
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
