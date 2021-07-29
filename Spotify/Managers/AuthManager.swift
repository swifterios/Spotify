//
//  AuthManager.swift
//  Spotify
//
//  Created by Владислав on 29.07.2021.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let cliendID = "3a9a0420d34a40d6bcb2b0ea29be9e90"
        static let cliendSecret = "c713e513c5ad46cca5016e83010bc45e"
    }
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var expirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
