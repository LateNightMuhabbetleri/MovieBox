//
//  MovieListBuilder.swift
//  MovieBoxMVVM
//
//  Created by Göksel Köksal on 24.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit

final class MovieListBuilder {
    
    static func make() -> MovieListViewController {
        let storyboard = UIStoryboard(name: "MovieList", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MovieListViewController") as! MovieListViewController
        // TODO
        return viewController
    }
}
