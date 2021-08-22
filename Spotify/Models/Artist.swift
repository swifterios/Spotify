//
//  Artist.swift
//  Spotify
//
//  Created by Владислав on 29.07.2021.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String : String]
}
