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
}