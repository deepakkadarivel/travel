//
//  ProfileTableViewCell.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var optionImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    var images = ["home", "story", "like", "event_planner", "assisted", "adventure"]
    var labels = ["My Trips", "Canvas", "Favourite Destinations", "Event Planner", "Assisted Tourism", "Adventure Tourism"]
    
    func setup(index: Int) {
        label.text = labels[index]
        optionImage.image = UIImage(named: images[index])
    }
    
}
