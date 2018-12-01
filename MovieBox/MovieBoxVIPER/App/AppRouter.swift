//
//  AppRouter.swift
//  MovieBoxVIPER
//
//  Created by Ilter Cengiz on 1/12/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit

final class AppRouter {
    
    let window: UIWindow
    
    init() {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    
    func start() {
        // TODO: Replace with movie list
        let viewController = UIViewController()
        viewController.view.backgroundColor = .blue
        viewController.title = "Replace Me"
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
