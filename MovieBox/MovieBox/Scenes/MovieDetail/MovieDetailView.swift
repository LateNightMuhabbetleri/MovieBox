//
//  MovieDetailView.swift
//  MovieBoxMVC
//
//  Created by Ilter Cengiz on 18/11/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit

final class MovieDetailView: UIView {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
}

extension MovieDetailView: MovieDetailViewProtocol {
    
    func updateMovieDetail(_ movieDetail: MovieDetailPresentation) {
        movieTitleLabel.text = movieDetail.title
        artistNameLabel.text = movieDetail.artistName
        genreLabel.text = movieDetail.genre
    }
}
