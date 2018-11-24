//
//  MovieBoxMVCTests.swift
//  MovieBoxMVCTests
//
//  Created by Ilter Cengiz on 18/11/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import XCTest
@testable import MovieBoxAPI
@testable import MovieBoxMVC

class MovieBoxMVCTests: XCTestCase {
    
    private var service: MockTopMoviesService!
    private var view: MockMovieListView!
    var controller: MovieListViewController!

    override func setUp() {
        service = MockTopMoviesService()
        view = MockMovieListView()
        controller = MovieListViewController()
        
        controller.customView = view
        controller.service = service
    }
    
    func testMovieList() throws {
        
        // Given
        let movie1 = try ResourceLoader.loadMovie(resource: .movie1)
        service.movies = [movie1]
        
        // When
        controller.loadViewIfNeeded()
        
        // Then
        XCTAssertEqual(view.isLoadingValues, [true, false])
        XCTAssertEqual(view.movieList?.count, 1)
        XCTAssertEqual(try view.movieList?.element(at: 0).title, movie1.name)
    }
}

private final class MockMovieListView: MovieListViewProtocol {
    
    var delegate: MovieListViewDelegate?
    var movieList: [MoviePresentation]?
    var isLoadingValues: [Bool] = []
    
    func updateMovieList(_ movieList: [MoviePresentation]) {
        self.movieList = movieList
    }
    
    func setLoading(_ isLoading: Bool) {
        isLoadingValues.append(isLoading)
    }
}
