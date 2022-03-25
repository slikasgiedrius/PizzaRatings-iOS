//
//  FavouritesView.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-16.
//

import SwiftUI

struct FavouritesView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    @ObservedObject var viewmodel = FavouritesViewModel()
    
    var body: some View {
        FavouritesContent()
    }
}
