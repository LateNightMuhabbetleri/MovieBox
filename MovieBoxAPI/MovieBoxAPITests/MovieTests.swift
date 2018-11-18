//
//  MovieTests.swift
//  MovieBoxAPITests
//
//  Created by Göksel Köksal on 4.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import XCTest
@testable import MovieBoxAPI
import Utility

class MovieTests: XCTestCase {

    func testParsing() throws {
        let bundle = Bundle(for: MovieTests.self)
        let url = try bundle.url(forResource: "movie", withExtension: "json").unwrap()
        let data = try Data(contentsOf: url)
        let decoder = Decoders.plainDateDecoder
        let movie = try decoder.decode(Movie.self, from: data)
        
        XCTAssertEqual(movie.artistName, "Susanna Fogel")
        XCTAssertEqual(movie.name, "The Spy Who Dumped Me")
        XCTAssertEqual(movie.copyright, "© 2018 Lions Gate Films Inc. All Rights Reserved")
        XCTAssertEqual(movie.genres.count, 1)
        XCTAssertEqual(movie.genres.first?.name, "Comedy")
    }
}
