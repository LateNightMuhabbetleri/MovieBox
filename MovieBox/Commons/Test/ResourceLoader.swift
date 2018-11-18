//
//  ResourceLoader.swift
//  MovieBox
//
//  Created by Göksel Köksal on 18.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
import Utility
import MovieBoxAPI

class ResourceLoader {
    
    enum MovieResource: String {
        case movie1
        case movie2
        case movie3
    }
    
    static func loadMovie(resource: MovieResource) throws -> Movie {
        let bundle = Bundle.test
        let url = try bundle.url(forResource: resource.rawValue, withExtension: "json").unwrap()
        let data = try Data(contentsOf: url)
        let decoder = Decoders.plainDateDecoder
        let movie = try decoder.decode(Movie.self, from: data)
        return movie
    }
}

private extension Bundle {
    class Dummy { }
    static let test = Bundle(for: Dummy.self)
}
