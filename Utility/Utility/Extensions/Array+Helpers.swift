//
//  Array+Helpers.swift
//  MovieBoxAPI
//
//  Created by Göksel Köksal on 18.11.2018.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import Foundation

public extension Array {
    
    struct IndexOutOfBoundsError: Error { }
    
    func element(at index: Int) throws -> Element {
        guard index >= 0 && index < self.count else {
            throw IndexOutOfBoundsError()
        }
        return self[index]
    }
}
