//
//  MovieBoxVIPERTests.swift
//  MovieBoxVIPERTests
//
//  Created by Ilter Cengiz on 1/12/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import XCTest
@testable import MovieBoxVIPER

class MovieBoxVIPERTests: XCTestCase {

    private var presenter: MovieListPresenter!
    private var interactor: MovieListInteractor!
    private var service: MockTopMoviesService!
    private var view: MockMovieListView!
    private var router: MockMovieListRouter!
    
    override func setUp() {
        service = MockTopMoviesService()
        interactor = MovieListInteractor(service: service)
        view = MockMovieListView()
        router = MockMovieListRouter()
        presenter = MovieListPresenter(view: view,
                                       interactor: interactor,
                                       router: router)
        
        view.presenter = presenter
    }
    
    func testLoad() throws {
        // Given:
        let movie1 = try ResourceLoader.loadMovie(resource: .movie1)
        let movie2 = try ResourceLoader.loadMovie(resource: .movie2)
        service.movies = [movie1, movie2]
        
        // When:
        view.viewDidLoad()
        
        // Then:
        XCTAssertEqual(view.outputs.count, 4)
        
        let output = try view.outputs.element(at: 0)
        switch output {
        case .updateTitle:
            break // Success
        default:
            XCTFail()
        }
        
        XCTAssertEqual(try view.outputs.element(at: 1), .setLoading(true))
        XCTAssertEqual(try view.outputs.element(at: 2), .setLoading(false))
        let expectedMovies = service.movies.map(MoviePresentation.init)
        XCTAssertEqual(try view.outputs.element(at: 3), .showMovieList(expectedMovies))
    }
    
    func testSelectMovie() throws {
        // Given:
        let movie1 = try ResourceLoader.loadMovie(resource: .movie1)
        let movie2 = try ResourceLoader.loadMovie(resource: .movie2)
        service.movies = [movie1, movie2]
        view.viewDidLoad()
        
        // When:
        view.selectMovie(at: 0)
        
        // Then:
        let expectedMovie = try service.movies.element(at: 0)
        XCTAssertEqual(try router.routes.element(at: 0), .detail(expectedMovie))
    }
}

private final class MockMovieListView: MovieListViewProtocol {
    
    var presenter: MovieListPresenter!
    var outputs: [MovieListPresenterOutput] = []
    
    func viewDidLoad() {
        presenter.load()
    }
    
    func selectMovie(at index: Int) {
        presenter.selectMovie(at: index)
    }
    
    func handleOutput(_ output: MovieListPresenterOutput) {
        outputs.append(output)
    }
}

private final class MockMovieListRouter: MovieListRouterProtocol {
    
    var routes: [MovieListRoute] = []
    
    func navigate(to route: MovieListRoute) {
        routes.append(route)
    }
}
