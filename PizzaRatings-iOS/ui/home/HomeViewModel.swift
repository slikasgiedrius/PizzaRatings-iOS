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
            .collection("Vilnius")
            .addSnapshotListener { (querySnapshot, error) in
                guard let documents = querySnapshot?.documents else {
                    print("No documents found for collection named Vilnius")
                    return
                }
                
                let data = documents.compactMap { queryDocumentSnapshot -> Rating? in
                    return try? queryDocumentSnapshot.data(as: Rating.self)
                }
                
                //                self.pizzeriasListDownloaded = data.sorted(by: >)
                
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