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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MovieBoxAPIClient.testRun()
    }
}
