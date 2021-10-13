//
//  PizzaRepository.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-08.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

struct PizzaRepository {
    var viewModel: HomeViewModel
    
    func getPizzeriasList() {
        Firestore.firestore()
            .collection("Vilnius")
            .addSnapshotListener { (querySnapshot, error) in
                guard let documents = querySnapshot?.documents else {
                    print("No documents found for collection named Vilnius")
                    return
                }
                
                let data = documents.compactMap { queryDocumentSnapshot -> Rating? in
                    return try? queryDocumentSnapshot.data(as: Rating.self)
                }
                
                let dataSortedByNumberOfRatings = data.sorted {
                    $0.numberOfRatings > $1.numberOfRatings
                }
                
                let dataSortedByAverageRating = dataSortedByNumberOfRatings.sorted {
                    $0.averageRating > $1.averageRating
                }
                
                viewModel.pizzeriasListDownloaded = dataSortedByAverageRating
            }
    }
}
