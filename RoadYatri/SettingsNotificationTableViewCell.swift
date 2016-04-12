//
//  SettingsNotificationTableViewCell.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class SettingsNotificationTableViewCell: UITableViewCell {

    @IBOutlet weak var labelField: UILabel!
    @IBOutlet weak var notifiacationControl: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var labels = ["Email Notifications", "Phone Notifications"]
    var controls = [true, false]
    
    func setup(index: Int) {
        labelField.text = labels[index]
        notifiacationControl.setOn(controls[index], animated: true)
    }

}
