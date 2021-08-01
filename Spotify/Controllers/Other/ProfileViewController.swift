//
//  ProfileViewController.swift
//  Spotify
//
//  Created by Владислав on 29.07.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Profile"
        
        APICaller.shared.getCurrentUserProfile { result in
            switch result {
            case .success(let model):
                print(model)
                break
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
     
}
