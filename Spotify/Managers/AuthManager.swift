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
    
    public var signInURL: URL? {
        let base = "https://accounts.spotify.com/authorize"
        let redirectURI = "https://github.com/swifterios"
        let scopes = "user-read-private"
        let fullURL = "\(base)?response_type=code&client_id=\(Constants.cliendID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        
        return URL(string: fullURL)
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
    
    public func exchangeCodeForToken(code: String, completion: @escaping (Bool) -> Void) {
        
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
