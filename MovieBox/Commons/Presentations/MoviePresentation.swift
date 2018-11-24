//
//  MoviePresentation.swift
//  MovieBoxMVC
//
//  Created by Ilter Cengiz on 18/11/18.
//  Copyright © 2018 Late Night Muhabbetleri. All rights reserved.
//

import UIKit

final class MoviePresentation: NSObject {
    
    let title: String
    let detail: String
    
    init(title: String, detail: String) {
        self.title = title
        self.detail = detail
        super.init()
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? MoviePresentation else { return false }
        return self.title == other.title && self.detail == other.detail
    }
}
