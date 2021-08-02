//
//  SettingsModels.swift
//  Spotify
//
//  Created by Владислав on 02.08.2021.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handle: () -> Void
}
