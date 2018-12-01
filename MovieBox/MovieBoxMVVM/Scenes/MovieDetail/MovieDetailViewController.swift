//
//  MovieDetailViewController.swift
//  MovieBoxMVVM
//
//  Created by Göksel Köksal on 24.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit

final class MovieDetailViewController: UIViewController {
    
    @IBOutlet private weak var movieTitleLabel: UILabel!
    @IBOutlet private weak var artistNameLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!
    
    var viewModel: MovieDetailViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.load()
    }
}

extension MovieDetailViewController: MovieDetailViewModelDelegate {
    
    func showDetail(_ presentation: MovieDetailPresentation) {
        movieTitleLabel.text = presentation.title
        artistNameLabel.text = presentation.artistName
        genreLabel.text = presentation.genre
    }
}
