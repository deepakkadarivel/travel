//
//  StoryDetailViewController.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 13/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class StoryDetailViewController: UIViewController {

    var story: Story!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 350.0
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // Navigationbar setup
        let nav = self.navigationController?.navigationBar
        nav?.translucent = false
        self.navigationController?.navigationBar.barTintColor = Colors.White
        self.navigationController!.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Philosopher", size: 16)!, NSForegroundColorAttributeName: Colors.Black]
        self.navigationController?.navigationBar.tintColor = Colors.Black
        
        let dismiss = UIImage(named: "back")
        let dismissButton = UIBarButtonItem(image: dismiss, style: .Plain, target: self, action: #selector(DestinationDetailViewController.dismissMethod))
        navigationItem.leftBarButtonItem = dismissButton
    }
    
    func dismissMethod() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

extension StoryDetailViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Configure the cell...
        let cell = tableView.dequeueReusableCellWithIdentifier("StoryDetailCell", forIndexPath: indexPath) as! StoryDetailTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.set(story)
        return cell
    }
    
}

