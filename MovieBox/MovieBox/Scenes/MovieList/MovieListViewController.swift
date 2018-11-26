//
//  MovieListViewController.swift
//  MovieBoxMVC
//
//  Created by Ilter Cengiz on 18/11/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit
import MovieBoxAPI

final class MovieListViewController: UIViewController {
    
    @IBOutlet weak var customView: MovieListViewProtocol! {
        didSet {
            customView.delegate = self
        }
    }
    var service: TopMoviesServiceProtocol!
    private var movieList: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Movies"
        customView.setLoading(true)
        
        service.fetchTopMovies { [weak self] result in
            
            guard let self = self else { return }
            
            switch result {
            case .success(let value):
                self.movieList = value.results
                let moviePresentations = value.results.map(MoviePresentation.init)
                self.customView.updateMovieList(moviePresentations)
            case .failure(let error):
                print(error)
            }
            
            self.customView.setLoading(false)
        }
    }
}

extension MovieListViewController: MovieListViewDelegate {
    
    func didSelectMovie(at index: Int) {
        let movie = movieList[index]
        let movieDetailViewController = MovieDetailBuilder.make(with: movie)
        show(movieDetailViewController, sender: nil)
    }
}
