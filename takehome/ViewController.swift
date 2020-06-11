//
//  ViewController.swift
//  takehome
//
//  Created by Timothy Lenardo on 6/9/20.
//  Copyright © 2020 Takeoff Labs, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var profiles: [Profile] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        self.loadProfiles();
    }

    private func loadProfiles() {
        ProfileService.getProfiles { (result: Result<Profiles, APIServiceError>) in
            switch result {
               case .success(let profiles):
                   self.profiles = profiles.profiles
                   break
               case .failure(let error):
                   // TODO: Handle Error
                   print("Error: \(error)")
                   break
            }
        }
    }
}

