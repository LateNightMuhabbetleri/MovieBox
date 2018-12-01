//
//  MovieDetailBuilder.swift
//  MovieBoxMVVM
//
//  Created by Göksel Köksal on 24.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
import MovieBoxAPI

final class MovieDetailBuilder {
    
    static func make(with viewModel: MovieDetailViewModelProtocol) -> MovieDetailViewController {
        let storyboard = UIStoryboard(name: "MovieDetail", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MovieDetailViewController") as! MovieDetailViewController
        viewController.viewModel = viewModel
        return viewController
    }
}
