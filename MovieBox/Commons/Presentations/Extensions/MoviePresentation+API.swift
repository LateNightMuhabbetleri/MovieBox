//
//  Presentations+API.swift
//  MovieBoxMVC
//
//  Created by Göksel Köksal on 24.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
import MovieBoxAPI

extension MoviePresentation {
    
    convenience init(movie: Movie) {
        self.init(title: movie.name,
                  detail: movie.artistName)
    }
}
