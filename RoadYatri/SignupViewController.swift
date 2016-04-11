//
//  SignupViewController.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 11/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit
import FRHyperLabel

class SignupViewController: UIViewController {
    
    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var appTagLine: UILabel!
    @IBOutlet weak var loginLabel: FRHyperLabel!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var userNameView: UIView!
    
    override func viewWillAppear(animated: Bool) {
        
        //AppName and TagLine Shadow
        appName.applyShadow(appName)
        appTagLine.applyShadow(appTagLine)
        
        self.userNameView.applyCornerRadius(self.userNameView, cornerRadius: self.userNameView.frame.size.height / 2)
        self.emailView.applyCornerRadius(self.emailView, cornerRadius: self.emailView.frame.size.height / 2)
        self.passwordView.applyCornerRadius(self.passwordView, cornerRadius: self.passwordView.frame.size.height / 2)
        
        // MARK: - Login link Text Formatting
        //Step 1: Setup Label value and attribues
        loginLabel.numberOfLines = 0;
        
        let string = "Already have an account? Login"
        
        let attributes = [NSForegroundColorAttributeName: UIColor.whiteColor(),
                          NSFontAttributeName: UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote)]
        
        loginLabel.attributedText = NSAttributedString(string: string, attributes: attributes)
        
        //Step 2: Define a selection handler block
        let handler = {
            (hyperLabel: FRHyperLabel!, substring: String!) -> Void in
            switch substring {
            case "Login":
                //
                break
            default:
                break
            }
            
        }
        //Step 3: Add link substrings
        loginLabel.setLinksForSubstrings(["Login"], withLinkHandler: handler)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        //Gradient Layer
        self.view.addBackgroundGradientLayer(self.view, subView: self.view, colorTop: Colors.Transparent, colorBottom: Colors.Black)

    }
    
    override func viewDidAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    @IBAction func dismissVC(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
