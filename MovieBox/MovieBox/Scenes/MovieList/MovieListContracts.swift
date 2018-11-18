//
//  MovieListContracts.swift
//  MovieBoxMVC
//
//  Created by Ilter Cengiz on 18/11/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation

@objc protocol MovieListViewProtocol: class {
    var delegate: MovieListViewDelegate? { get set }
    func updateMovieList(_ movieList: [MoviePresentation])
    func setLoading(_ isLoading: Bool)
}

@objc protocol MovieListViewDelegate: class {
    func didSelectMovie(at index: Int)
}
