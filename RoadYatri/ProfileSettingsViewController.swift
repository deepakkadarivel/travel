//
//  ProfileSettingsViewController.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class ProfileSettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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

}
