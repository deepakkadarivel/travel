//
//  InitialViewController.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 11/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit
import FRHyperLabel

class InitialViewController: UIViewController {

    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var appTagLine: UILabel!
    @IBOutlet weak var tosLabel: FRHyperLabel!
    @IBOutlet weak var createAccButton: UIButton!
    @IBOutlet weak var facebookAccButton: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        
        //AppName and TagLine Shadow
        appName.applyShadow(appName)
        appTagLine.applyShadow(appTagLine)
        
        self.createAccButton.applyCornerRadius(self.createAccButton, cornerRadius: self.createAccButton.frame.size.height / 2, borderColor: UIColor.clearColor())
        self.facebookAccButton.applyCornerRadius(self.facebookAccButton, cornerRadius: self.facebookAccButton.frame.size.height / 2, borderColor: UIColor.clearColor())
        
        // MARK: - TOS and Privacy Text Formatting
        //Step 1: Setup Label value and attribues
        tosLabel.numberOfLines = 0;
        
        let string = "By signing up you confirm to accept our Privacy Policy and Terms of Use."
        
        let attributes = [NSForegroundColorAttributeName: UIColor.whiteColor(),
                          NSFontAttributeName: UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote)]
        
        tosLabel.attributedText = NSAttributedString(string: string, attributes: attributes)
        
        //Step 2: Define a selection handler block
        let handler = {
            (hyperLabel: FRHyperLabel!, substring: String!) -> Void in
            switch substring {
            case "Privacy Policy":
                //
                break
            case "Terms of Use.":
                //
                break
            default:
                break
            }
            
        }
        //Step 3: Add link substrings
        tosLabel.setLinksForSubstrings(["Privacy Policy", "Terms of Use."], withLinkHandler: handler)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Gradient Layer
        self.view.addBackgroundGradientLayer(self.view, subView: self.view, colorTop: Colors.Transparent, colorBottom: Colors.HalfBlack)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    @IBAction func createNewAccount(sender: AnyObject) {
        NavigationUtil.gotoSignup(self)
    }

    @IBAction func createFacebookAccount(sender: AnyObject) {
        NavigationUtil.gotoHomeScreen()
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
