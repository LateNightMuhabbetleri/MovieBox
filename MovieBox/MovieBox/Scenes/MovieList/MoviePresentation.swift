//
//  MoviePresentation.swift
//  MovieBoxMVC
//
//  Created by Ilter Cengiz on 18/11/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
import MovieBoxAPI

final class MoviePresentation: NSObject {
    let title: String
    let detail: String
    
    init(title: String, detail: String) {
        self.title = title
        self.detail = detail
        super.init()
    }
}

extension MoviePresentation {
    
    convenience init(movie: Movie) {
        self.init(title: movie.name,
                  detail: movie.artistName)
    }
}
