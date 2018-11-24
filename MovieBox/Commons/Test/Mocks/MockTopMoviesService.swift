//
//  MockTopMoviesService.swift
//  MovieBox
//
//  Created by Göksel Köksal on 24.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
@testable import MovieBoxAPI

final class MockTopMoviesService: TopMoviesServiceProtocol {
    
    var movies: [Movie] = []
    
    func fetchTopMovies(completion: @escaping (Result<TopMoviesResponse>) -> Void) {
        completion(.success(TopMoviesResponse(results: movies)))
    }
}
