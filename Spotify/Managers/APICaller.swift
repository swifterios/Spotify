//
//  APICaller.swift
//  Spotify
//
//  Created by Владислав on 29.07.2021.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private init() {}
    
    public func getCurrentUserProfile(completion: @escaping (Result<UserProfile, Error>) -> Void) {
        
    }
}
