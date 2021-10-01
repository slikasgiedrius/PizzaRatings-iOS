//
//  DetailsView.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-01.
//

import SwiftUI

struct DetailsView: View {
    
    @ObservedObject var viewmodel = DetailsViewModel()
    
    var body: some View {
        Text("Details screen")
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
