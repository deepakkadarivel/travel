//
//  StoryViewController.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let stories = Story.allStories()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.rowHeight = 220
        tableView.tableFooterView = UIView(frame: CGRectZero)
    }

    override func viewDidAppear(animated: Bool) {
        
        // Navigationbar setup
        
        let nav = self.navigationController?.navigationBar
        nav?.translucent = false
        self.navigationController?.navigationBar.barTintColor = Colors.White
        self.navigationController!.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Philosopher", size: 16)!, NSForegroundColorAttributeName: Colors.Black]
        self.navigationController?.navigationBar.topItem!.title = "STORIES"
    }

}

extension StoryViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Configure the cell...
        let cell = tableView.dequeueReusableCellWithIdentifier("StoryCell", forIndexPath: indexPath) as! StoryTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.story = stories[indexPath.row]
        return cell
    }
}
