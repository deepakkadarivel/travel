//
//  DetailTextTableViewCell.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 13/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class DetailTextTableViewCell: UITableViewCell {

    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailHeaderLabel: UILabel!
    @IBOutlet weak var detailText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(destination: Destination) {
        detailImage.image = destination.image
        detailHeaderLabel.text = destination.title
        detailText.text = destination.detail
    }
}
