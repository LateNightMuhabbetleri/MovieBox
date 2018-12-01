//
//  AppContainer.swift
//  MovieBoxVIPER
//
//  Created by Ilter Cengiz on 1/12/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation
import MovieBoxAPI

let app = AppContainer()

final class AppContainer {
    
    let router = AppRouter()
    let service = TopMoviesService()
}
