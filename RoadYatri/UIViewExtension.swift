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
    
    public func insertBlurView (view: UIView, style: UIBlurEffectStyle) -> UIVisualEffectView {
        view.backgroundColor = UIColor.clearColor()
        
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        view.insertSubview(blurEffectView, atIndex: 1)
        return blurEffectView
    }
    
    func applyCornerRadius(view: UIView, cornerRadius: CGFloat, borderColor: UIColor) -> UIView {
        view.layer.cornerRadius = cornerRadius
        view.clipsToBounds = true
        view.layer.borderWidth = 1.0
        view.layer.borderColor = borderColor.CGColor
        return view
    }
}