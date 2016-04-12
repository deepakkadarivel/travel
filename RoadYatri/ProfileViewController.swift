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

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        
        // Navigationbar setup
        
        let nav = self.navigationController?.navigationBar
        nav?.translucent = false
        //        let img = UIImage()
        //        self.navigationController?.navigationBar.shadowImage = img
        //        self.navigationController?.navigationBar.setBackgroundImage(img, forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.barTintColor = Colors.White
        self.navigationController!.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Philosopher", size: 16)!, NSForegroundColorAttributeName: Colors.Black]
        self.navigationController?.navigationBar.topItem!.title = "PROFILE"
    }

}
