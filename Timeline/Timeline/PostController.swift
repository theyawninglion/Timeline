//
//  PostController.swift
//  Timeline
//
//  Created by Taylor Phillips on 2/27/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//

import Foundation
import UIKit

class PostController {
    static let sharedController = PostController()
    var posts: [Post] = []
    
    func createPostWith(image: UIImage, caption: String){
        Post(photoData: <#T##Data?#>, timestamp: <#T##Date#>, comments: <#T##[Comment]#>)
    }
    
}
