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
        
//        Post(photoData: <#T##Data?#>)
    }
    func addComment(toPost: Post, text: String){
       let comment =  Comment(text: text, post: toPost)
        toPost.comments.append(comment)
    }
}
