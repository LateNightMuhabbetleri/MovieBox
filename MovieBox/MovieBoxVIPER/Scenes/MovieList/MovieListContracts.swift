//
//  MovieListContracts.swift
//  MovieBoxVIPER
//
//  Created by Ilter Cengiz on 2/12/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
import struct MovieBoxAPI.Movie

// MARK: - Interactor

protocol MovieListInteractorProtocol: class {
    var delegate: MovieListInteractorDelegate? { get set }
    func load()
    func selectMovie(at index: Int)
}

enum MovieListInteractorOutput: Equatable {
    case setLoading(Bool)
    case showMovieList([Movie])
    case showMovieDetail(Movie)
}

protocol MovieListInteractorDelegate: class {
    func handleOutput(_ output: MovieListInteractorOutput)
}

// MARK: - Presenter

protocol MovieListPresenterProtocol: class {
    func load()
    func selectMovie(at index: Int)
}

enum MovieListPresenterOutput: Equatable {
    case updateTitle(String)
    case setLoading(Bool)
    case showMovieList([MoviePresentation])
}

// MARK: - View

protocol MovieListViewProtocol: class {
    func handleOutput(_ output: MovieListPresenterOutput)
}

// MARK: - Router

enum MovieListRoute: Equatable {
    case detail(Movie)
}

protocol MovieListRouterProtocol: class {
    func navigate(to route: MovieListRoute)
}
