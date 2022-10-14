//
//  ProfileView.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-01.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    @ObservedObject var viewmodel = ProfileViewModel()
    
    var body: some View {
        ProfileContent()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(ProfileViewModel())
    }
}
