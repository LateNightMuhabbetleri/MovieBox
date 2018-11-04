//
//  Result.swift
//  MovieBoxAPI
//
//  Created by Göksel Köksal on 4.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation

public enum Result<Value> {
    case success(Value)
    case failure(Error)
}
