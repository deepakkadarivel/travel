//
//  UIViewExtension.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 11/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func addBackgroundGradientLayer(view: UIView, subView: UIView, colorTop: UIColor, colorBottom: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.frame
        
        let colorTopValue: AnyObject = colorTop.CGColor
        let colorBottomValue: AnyObject = colorBottom.CGColor
        gradientLayer.colors = [colorTopValue, colorBottomValue]
        gradientLayer.locations = [0.0, 1.0]
        
        subView.layer.insertSublayer(gradientLayer, atIndex: 1)
    }
}