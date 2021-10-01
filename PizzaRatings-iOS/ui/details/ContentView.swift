//
//  ContentView.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-09-28.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = DetailsViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.pizzeriasListDownloaded.sorted(by: >)) { item in
                VStack(alignment: .leading) {
                    Text(item.name)
                    Text("\(item.averageRating.removeZerosFromEnd()) average rating")
                    Text("\(item.numberOfRatings) rating(s)")
                }
            }
            .navigationTitle("Pizza Ratings")
            .onAppear {
                viewModel.getPizzeriasList()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
