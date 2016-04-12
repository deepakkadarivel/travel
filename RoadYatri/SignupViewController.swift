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
    
    @IBOutlet weak var appLogo: UIImageView!
    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var appTagLine: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
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
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Gradient Layer
        self.view.addBackgroundGradientLayer(self.view, subView: self.view, colorTop: Colors.Transparent, colorBottom: Colors.Black)
        //Tap Gesture for login
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SignupViewController.tapLogin(_:)))
        loginLabel.addGestureRecognizer(tapGesture)
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
        self.appLogo.alpha = 0
        UIApplication.sharedApplication().statusBarHidden = true
    }
    
    func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0
        self.appName.alpha = 1
        self.appTagLine.alpha = 1
        self.appLogo.alpha = 1
        UIApplication.sharedApplication().statusBarHidden = false
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
        self.appName.alpha = 1
        self.appTagLine.alpha = 1
        self.appLogo.alpha = 1
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func signup(sender: AnyObject) {
        NavigationUtil.gotoHomeScreen()
    }
    
    func tapLogin(gesture: UITapGestureRecognizer) {
        self.animateLogin()
    }
    
}
