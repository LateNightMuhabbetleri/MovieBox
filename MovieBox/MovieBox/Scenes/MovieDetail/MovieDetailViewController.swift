//
//  MovieDetailViewController.swift
//  MovieBoxMVC
//
//  Created by Ilter Cengiz on 18/11/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit
import MovieBoxAPI

final class MovieDetailViewController: UIViewController {
    
    @IBOutlet var customView: MovieDetailView!
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.updateMovieDetail(MovieDetailPresentation(movie: movie))
    }
}
