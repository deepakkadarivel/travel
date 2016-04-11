//
//  SignupViewController.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 11/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit
import FRHyperLabel

class SignupViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var appTagLine: UILabel!
    @IBOutlet weak var loginLabel: FRHyperLabel!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var userNameView: UIView!
    @IBOutlet weak var createAccButton: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewWillAppear(animated: Bool) {
        
        //AppName and TagLine Shadow
        appName.applyShadow(appName)
        appTagLine.applyShadow(appTagLine)
        
        self.userNameView.applyCornerRadius(self.userNameView, cornerRadius: self.userNameView.frame.size.height / 2, borderColor: Colors.White)
        self.emailView.applyCornerRadius(self.emailView, cornerRadius: self.emailView.frame.size.height / 2, borderColor: Colors.White)
        self.passwordView.applyCornerRadius(self.passwordView, cornerRadius: self.passwordView.frame.size.height / 2, borderColor: Colors.White)
        self.createAccButton.applyCornerRadius(self.createAccButton, cornerRadius: self.createAccButton.frame.size.height / 2, borderColor: UIColor.clearColor())
        
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
                self.animateLogin()
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

        emailTextField.delegate = self
        nameTextField.delegate = self
        passwordTextField.delegate = self
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SignupViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(SignupViewController.keyboardWillShow(_:)), name:UIKeyboardWillShowNotification, object: nil);
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(SignupViewController.keyboardWillHide(_:)), name:UIKeyboardWillHideNotification, object: nil);
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
    
    func animateLogin() {
        UIView.animateWithDuration(0.5, animations: { 
            self.userNameView.alpha = 0
            self.loginLabel.alpha = 0
            self.userNameView.userInteractionEnabled = false
            self.loginLabel.userInteractionEnabled = false
            self.createAccButton.setTitle("GET STARTED", forState: .Normal)
            }, completion: nil)
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y = -150
        self.appName.alpha = 0
        self.appTagLine.alpha = 0
    }
    
    func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0
        self.appName.alpha = 1
        self.appTagLine.alpha = 1
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
        self.appName.alpha = 1
        self.appTagLine.alpha = 1
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
