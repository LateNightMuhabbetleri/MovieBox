//
//  Movie.swift
//  MovieBoxAPI
//
//  Created by Göksel Köksal on 4.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation

public struct Movie: Decodable, Equatable {
    
    public enum CodingKeys: String, CodingKey {
        case artistName
        case releaseDate
        case name
        case copyright
        case image = "artworkUrl100"
        case genres
    }
    
    public let artistName: String
    public let releaseDate: String
    public let name: String
    public let copyright: String?
    public let image: URL
    public let genres: [Genre]
}

public struct Genre: Decodable, Equatable {
    public let name: String
}
