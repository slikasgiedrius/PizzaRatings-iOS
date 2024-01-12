//
//  DetailsViewModel.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-01.
//

import Foundation
import Firebase

class HomeViewModel: ObservableObject {
    
    @Published var pizzeriasListDownloaded = [Rating]()
    let pizzaRepository = PizzaRepository()
    
    func getPizzeriasList() {
        pizzaRepository.getPizzeriasList {[weak self] in
            self?.pizzeriasListDownloaded = $0
        }
    }
}
