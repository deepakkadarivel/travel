//
//  TimelineCollectionViewCell.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class TimelineCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var imageCoverView: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var timeAndRoomLabel: UILabel!
    
    var destination: Destination? {
        didSet {
            if let destination = destination {
                imageView.image = destination.backgroundImage
                titleLabel.text = destination.title
                timeAndRoomLabel.text = destination.subs
            }
        }
    }
    
    override func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes) {
        super.applyLayoutAttributes(layoutAttributes)
        
        // 1
        let standardHeight = UltravisualLayoutConstants.Cell.standardHeight
        let featuredHeight = UltravisualLayoutConstants.Cell.featuredHeight
        
        // 2
        let delta = 1 - ((featuredHeight - CGRectGetHeight(frame)) / (featuredHeight - standardHeight))
        
        // 3
        let minAlpha: CGFloat = 0.3
        let maxAlpha: CGFloat = 0.75
        imageCoverView.alpha = maxAlpha - (delta * (maxAlpha - minAlpha))
        
        let scale = max(delta, 0.5)
        titleLabel.transform = CGAffineTransformMakeScale(scale, scale)
        timeAndRoomLabel.alpha = delta
    }
}
