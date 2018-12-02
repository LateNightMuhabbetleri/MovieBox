//
//  MovieListInteractor.swift
//  MovieBoxVIPER
//
//  Created by Ilter Cengiz on 2/12/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
import MovieBoxAPI

final class MovieListInteractor: MovieListInteractorProtocol {
    
    weak var delegate: MovieListInteractorDelegate?
    
    private let service: TopMoviesServiceProtocol
    private var movies: [Movie] = []
    
    init(service: TopMoviesServiceProtocol) {
        self.service = service
    }
    
    func load() {
        delegate?.handleOutput(.setLoading(true))
        service.fetchTopMovies { [weak self] result in
            guard let self = self else { return }
            self.delegate?.handleOutput(.setLoading(false))
            
            switch result {
            case .success(let value):
                self.movies = value.results
                self.delegate?.handleOutput(.showMovieList(value.results))
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func selectMovie(at index: Int) {
        let movie = movies[index]
        delegate?.handleOutput(.showMovieDetail(movie))
    }
}
