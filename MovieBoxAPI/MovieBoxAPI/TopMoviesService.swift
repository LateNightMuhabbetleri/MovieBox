//
//  TopMoviesService.swift
//  MovieBoxAPI
//
//  Created by Göksel Köksal on 4.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
import Alamofire

public protocol TopMoviesServiceProtocol {
    func fetchTopMovies(completion: @escaping (Result<TopMoviesResponse>) -> Void)
}

public class TopMoviesService: TopMoviesServiceProtocol {
    
    public enum Error: Swift.Error {
        case serializationError(internal: Swift.Error)
        case networkError(internal: Swift.Error)
    }
    
    public init() { }
    
    public func fetchTopMovies(completion: @escaping (Result<TopMoviesResponse>) -> Void) {
        let urlString = "https://rss.itunes.apple.com/api/v1/us/movies/top-movies/all/25/explicit.json"
        
        AF.request(urlString).responseData { (response) in
            switch response.result {
            case .success(let data):
                let decoder = Decoders.plainDateDecoder
                do {
                    let response = try decoder.decode(TopMoviesResponse.self, from: data)
                    completion(.success(response))
                } catch {
                    completion(.failure(Error.serializationError(internal: error)))
                }
            case .failure(let error):
                completion(.failure(Error.networkError(internal: error)))
            }
        }
    }
}
