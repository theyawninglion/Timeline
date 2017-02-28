//
//  AddPostTableViewController.swift
//  Timeline
//
//  Created by Taylor Phillips on 2/27/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//

import UIKit

class AddPostTableViewController: UITableViewController {
    
    var post: Post?
    
    @IBOutlet weak var selectImageView: UIImageView!
    @IBOutlet weak var postCaption: UITextField!
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectImageButtonTapped(_ sender: Any) {
        selectImageView.image = #imageLiteral(resourceName: "stars")
        self.title = ""
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        
        guard let selectImage = selectImageView.image, let postCaption = postCaption else { return }
        
        
//        if postCaption.text?.characters.count > 0 && selectImage == #imageLiteral(resourceName: "stars"){
//            let text = postCaption.text
//            
//            PostController.sharedController.addComment(toPost: , text: text)
//            
//            
//        }else{
//            noPostAlert()
//        }
    }
    
    func noPostAlert(){
        let alertController = UIAlertController(title: "Alert!", message: "You are missing either an image or caption.\nPlease make sure both are filled", preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "dismiss", style: .cancel, handler: nil)
        
        alertController.addAction(dismissAction)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

  }
