//
//  AuthResponse.swift
//  Spotify
//
//  Created by Владислав on 29.07.2021.
//

import Foundation

struct AuthResponce: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}
