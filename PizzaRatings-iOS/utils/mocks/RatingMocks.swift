//
//  RatingMock.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-13.
//

import Foundation

func getMockedRating() -> Rating {
    return Rating(
        name: "Dodo Pizza",
        addresses: ["Antakalnio g. 41", "Ozo g. 18"],
        ratings: ["92bMFbKkwtZu5MXjiWmJnMvzKM33": 4],
        logoUrl: "https://drive.google.com/thumbnail?id=1jgJb_Ev4QeAbYTv-q2lnbXW7SieLAqNq"
    )
}
