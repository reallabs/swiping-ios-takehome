//
//  ProfileService.swift
//  takehome
//
//  Created by Timothy Lenardo on 6/9/20.
//  Copyright © 2020 Takeoff Labs, Inc. All rights reserved.
//

import Foundation

enum ProfileService {

    static func getProfiles(completion: @escaping (Result<Profiles, APIServiceError>) -> Void) {
        guard let url = URL(string: EndPoints.Profiles.rawValue) else {
            completion(.failure(.invalidUrl))
            return
        }

        URLSession.shared.resumeDataTask(with: url, withTypedResponse: completion)
    }
}
