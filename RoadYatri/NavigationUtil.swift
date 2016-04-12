//
//  NavigationUtil.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 11/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import Foundation
import UIKit

class NavigationUtil {
    static func gotoSignup(vc: UIViewController) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Signup", bundle: nil)
        let destination = storyboard.instantiateViewControllerWithIdentifier("SignupVC") as! SignupViewController
        destination.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        vc.presentViewController(destination, animated: true, completion: nil)
    }
    
    static func gotoHomeScreen(){
        let storyBoard = UIStoryboard(name: "TabBar", bundle: nil)
        let tabBarVC = storyBoard.instantiateViewControllerWithIdentifier("TabBarVC") as! UITabBarController
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.window?.rootViewController = tabBarVC
    }
    
    static func gotoProfileSettings(vc: UIViewController) {
        let storyboard : UIStoryboard = UIStoryboard(name: "ProfileSettings", bundle: nil)
        let destination = storyboard.instantiateViewControllerWithIdentifier("ProfileSettingsVC") as! ProfileSettingsViewController
        let navigationController = UINavigationController(rootViewController: destination)
        vc.presentViewController(navigationController, animated: true, completion: nil)
    }
    
}