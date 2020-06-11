//
//  Profile.swift
//  takehome
//
//  Created by Timothy Lenardo on 6/9/20.
//  Copyright © 2020 Takeoff Labs, Inc. All rights reserved.
//

import Foundation

struct Profile: Codable {
    let id: Int
    let firstName: String
    let lastName: String
    let city: String
    let country: String
    let isMatch: Bool
    let photos: [URL]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case firstName = "first_name"
        case lastName = "last_name"
        case city = "city"
        case country = "country"
        case isMatch = "is_match"
        case photos = "photos"

    }
}

struct Profiles: Codable {
    let profiles: [Profile]
}

