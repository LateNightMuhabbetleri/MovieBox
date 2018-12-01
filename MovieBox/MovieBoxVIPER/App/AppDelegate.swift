//
//  AppDelegate.swift
//  MovieBoxVIPER
//
//  Created by Ilter Cengiz on 1/12/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        app.router.start()
        return true
    }
}
