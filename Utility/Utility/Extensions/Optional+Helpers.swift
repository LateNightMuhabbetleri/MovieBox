//
//  Optional+Helpers.swift
//  MovieBoxAPI
//
//  Created by Göksel Köksal on 18.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation

public extension Optional {
    
    struct FoundNilWhileUnwrappingError: Error { }
    
    func unwrap() throws -> Wrapped {
        switch self {
        case .some(let wrapped):
            return wrapped
        case .none:
            throw FoundNilWhileUnwrappingError()
        }
    }
}
