//
//  ProfileSettingsViewController.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class ProfileSettingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 75
        tableView.tableFooterView = UIView(frame: CGRectZero)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ProfileSettingsViewController.tap(_:)))
        view.addGestureRecognizer(tapGesture)
    }

    override func viewDidAppear(animated: Bool) {
        
        // Navigationbar setup
        let nav = self.navigationController?.navigationBar
        nav?.translucent = false
        self.navigationController?.navigationBar.barTintColor = Colors.White
        self.navigationController!.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Philosopher", size: 16)!, NSForegroundColorAttributeName: Colors.Black]
        self.navigationController?.navigationBar.topItem!.title = "SETTINGS"
        self.navigationController?.navigationBar.tintColor = Colors.Black
        
        let log_out = UIImage(named: "log_out")
        let logoutButton = UIBarButtonItem(image: log_out, style: .Plain, target: self, action: #selector(ProfileSettingsViewController.logoutMethod))
        navigationItem.rightBarButtonItem = logoutButton
        
        let cancel = UIImage(named: "cancel_dark")
        let cancelButton = UIBarButtonItem(image: cancel, style: .Plain, target: self, action: #selector(ProfileSettingsViewController.dismissMethod))
        navigationItem.leftBarButtonItem = cancelButton
    }
    
    func logoutMethod() {
        print("logout")
    }
    
    func dismissMethod() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func tap(gesture: UITapGestureRecognizer) {
        self.view.resignFirstResponder()
         self.view.endEditing(true)
    }
    
}

extension ProfileSettingsViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return 4
        case 1:
            return 2
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Configure the cell...
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("SettingsGeneralCell", forIndexPath: indexPath) as! SettingsGeneralTableViewCell
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            cell.setup(indexPath.row)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier("SettingsNotificationCell", forIndexPath: indexPath) as! SettingsNotificationTableViewCell
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            cell.setup(indexPath.row)
            return cell
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("SettingsGeneralCell", forIndexPath: indexPath) as! SettingsGeneralTableViewCell
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            cell.setup(indexPath.row)
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let  headerCell = tableView.dequeueReusableCellWithIdentifier("SettingsHeaderCell") as! SettingsHeaderTableViewCell
        switch section {
        case 0:
            headerCell.sectionHeader.text = "GENERAL"
        case 1:
            headerCell.sectionHeader.text = "NOTIFICATIONS"
        default:
            headerCell.sectionHeader.text = ""
        }
        return headerCell
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
}
