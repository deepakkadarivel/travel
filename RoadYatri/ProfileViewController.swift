//
//  ProfileViewController.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(animated: Bool) {
        
        // Navigationbar setup
        let nav = self.navigationController?.navigationBar
        nav?.translucent = false
        self.navigationController?.navigationBar.barTintColor = Colors.White
        self.navigationController!.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Philosopher", size: 16)!, NSForegroundColorAttributeName: Colors.Black]
        self.navigationController?.navigationBar.topItem!.title = "PROFILE"
        self.navigationController?.navigationBar.tintColor = Colors.Black
        
        let settings = UIImage(named: "settings")
        let settingsButton = UIBarButtonItem(image: settings, style: .Plain, target: self, action: #selector(ProfileViewController.settingsMethod))
        navigationItem.rightBarButtonItem = settingsButton
    }
    
    func settingsMethod() {
        NavigationUtil.gotoProfileSettings(self)
    }

}
