//
//  MovieDetailContracts.swift
//  MovieBoxVIPER
//
//  Created by Ilter Cengiz on 1/12/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit

protocol MovieDetailPresenterProtocol {
    func load()
}

protocol MovieDetailViewProtocol: class {
    func update(_ presentation: MovieDetailPresentation)
}
