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
    
    struct Constants {
        static let baseAPIURL = "https://api.spotify.com/v1"
    }
    
    public func getCurrentUserProfile(completion: @escaping (Result<UserProfile, Error>) -> Void) {
        createRequest(with: URL(string: Constants.baseAPIURL + "/me"),
                      type: .GET) { baseRequest in
            let task = URLSession.shared.dataTask(with: baseRequest) { data, _, error in
                guard let data = data, error == nil else {
                    
                    completion(.failure(APIError.faileedToGetData))
                    return
                }
                
                do {
                    let result = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    print(result)
                }
                catch {
                    completion(.failure(error))
                }
            }
            task.resume()
        }
    }
    
    private func createRequest(with url: URL?,
                               type: HTTPMethod,
                               completion: @escaping (URLRequest) -> Void){
        AuthManager.shared.withValidToken { token in
            guard let apiUrl = url else {
                return
            }
            var request = URLRequest(url: apiUrl)
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            request.httpMethod = type.rawValue
            request.timeoutInterval = 30
            completion(request)
        }
    }
    
    //MARK: - Enums
    
    enum APIError: Error {
        case faileedToGetData
    }
    
    enum HTTPMethod: String {
        case GET
        case POST
    }
}
