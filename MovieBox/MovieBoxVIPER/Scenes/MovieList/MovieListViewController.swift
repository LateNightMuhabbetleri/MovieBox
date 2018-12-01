//
//  MovieListViewController.swift
//  MovieBoxMVVM
//
//  Created by Göksel Köksal on 24.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit
import MovieBoxAPI

final class MovieListViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension MovieListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath)
        // TODO
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TODO
        return 0
    }
}

extension MovieListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        // TODO
    }
}
