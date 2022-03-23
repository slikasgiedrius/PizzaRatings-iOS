//
//  DetailsViewModel.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-01.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

class HomeViewModel: ObservableObject {
    
    @Published var pizzeriasListDownloaded = [Rating]()
    let repo = PizzaRepository()
    
    func getPizzeriasList() {
        repo.getPizzeriasList {[weak self] in
            self?.pizzeriasListDownloaded = $0
        }
    }
}
