//
//  Post.swift
//  Timeline
//
//  Created by Taylor Phillips on 2/27/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//

import Foundation
import UIKit

class Post {
    let photoData: Data?
    let timestamp: Date
    var comments: [Comment]
    
    
    var photo: UIImage? {
        guard let data = photoData else { return nil }
        return UIImage(data: data)
    }
    
    init(photoData: Data?, timestamp: Date = Date(), comments: [Comment] = []){
        self.photoData = photoData
        self.timestamp = timestamp
        self.comments = comments
    }
    
    
    
}
