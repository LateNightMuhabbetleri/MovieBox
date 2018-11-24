//
//  MovieDetailPresentation+APO.swift
//  MovieBoxMVC
//
//  Created by Göksel Köksal on 24.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
import MovieBoxAPI

extension MovieDetailPresentation {
    
    init(movie: Movie) {
        self.init(title: movie.name,
                  artistName: movie.artistName,
                  genre: movie.genres.map({ $0.name }).joined(separator: ", "))
    }
}
