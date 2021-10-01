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

class DetailsViewModel: ObservableObject {
    
    @Published var pizzeriasListDownloaded = [Rating]()
    
    func getPizzeriasList() {
        Firestore.firestore()
            .collection("Vilnius")
            .addSnapshotListener { (querySnapshot, error) in
                guard let documents = querySnapshot?.documents else {
                    //No documents
                    return
                }
                
                self.pizzeriasListDownloaded = documents.compactMap { queryDocumentSnapshot -> Rating? in
                    return try? queryDocumentSnapshot.data(as: Rating.self)
                }
            }
    }
}
