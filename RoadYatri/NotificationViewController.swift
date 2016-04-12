//
//  NotificationViewController.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        
        // Navigationbar setup
        let nav = self.navigationController?.navigationBar
        nav?.translucent = false
        self.navigationController?.navigationBar.barTintColor = Colors.White
        self.navigationController!.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Philosopher", size: 16)!, NSForegroundColorAttributeName: Colors.Black]
        self.navigationController?.navigationBar.topItem!.title = "NOTIFICATIONS"
    }

}
