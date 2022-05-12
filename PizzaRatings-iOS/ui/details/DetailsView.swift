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
        DetailsContent(rating: rating)
    }
}
