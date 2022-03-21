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
    
    func getPizzeriasList() {
        Firestore.firestore()
            .collection(Constants.Cities.vilnius)
            .addSnapshotListener { (querySnapshot, error) in
                guard let documents = querySnapshot?.documents else {
                    print("No documents found for collection named \(Constants.Cities.vilnius)"
                    )
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
                
                self.pizzeriasListDownloaded = dataSortedByAverageRating
            }
    }
}
