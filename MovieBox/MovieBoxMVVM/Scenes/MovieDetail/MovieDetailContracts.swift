//
//  MovieDetailContracts.swift
//  MovieBoxMVVM
//
//  Created by Göksel Köksal on 24.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation

protocol MovieDetailViewModelDelegate: class {
    func showDetail(_ presentation: MovieDetailPresentation)
}

protocol MovieDetailViewModelProtocol {
    var delegate: MovieDetailViewModelDelegate? { get set }
    func load()
}
