//
//  PostListTableViewController.swift
//  Timeline
//
//  Created by Taylor Phillips on 2/27/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//

import UIKit

class PostListTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PostController.sharedController.posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postListCell", for: indexPath)
        let post = PostController.sharedController.posts[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toPostDetailTVC" {
            guard let indexPath = tableView.indexPathForSelectedRow, let postDetailTVC = segue.destination as? PostDetailTableViewController else { return }
            let infoPassed = PostController.sharedController.posts[indexPath.row]
            postDetailTVC.post = infoPassed
        
    }
}
}
