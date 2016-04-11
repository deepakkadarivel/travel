//
//  UILabelExtension.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 11/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    func applyShadow(label: UILabel)  {
        label.layer.shadowColor = Colors.HalfBlack.CGColor
        label.layer.shadowOpacity = 0.3
        label.layer.shadowOffset = CGSize(width: 1.0, height: 2.0)
        label.layer.shadowRadius = 2.0
        label.layer.shadowPath = UIBezierPath(rect: label.bounds).CGPath
        label.layer.shouldRasterize = true
    }
}