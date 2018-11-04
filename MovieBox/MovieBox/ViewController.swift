//
//  ViewController.swift
//  MovieBox
//
//  Created by Ilter Cengiz on 28/10/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit
import MovieBoxAPI

class ViewController: UIViewController {
    
    let service: TopMoviesServiceProtocol = TopMoviesService()

    override func viewDidLoad() {
        super.viewDidLoad()
        service.fetchTopMovies { (result) in
            print(result)
        }
    }
}
