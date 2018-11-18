//
//  MovieDetailPresentation.swift
//  MovieBoxMVC
//
//  Created by Ilter Cengiz on 18/11/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
import MovieBoxAPI

struct MovieDetailPresentation {
    let title: String
    let artistName: String
    let genre: String
}

extension MovieDetailPresentation {
    
    init(movie: Movie) {
        self.init(title: movie.name,
                  artistName: movie.artistName,
                  genre: movie.genres.map({ $0.name }).joined(separator: ", "))
    }
}
