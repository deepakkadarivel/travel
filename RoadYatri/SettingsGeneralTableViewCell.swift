//
//  SettingsGeneralTableViewCell.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class SettingsGeneralTableViewCell: UITableViewCell {

    @IBOutlet weak var labelField: UILabel!
    @IBOutlet weak var textInputField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var labels = ["Name", "Email", "Password", "Phone"]
    var inputFields = ["Deepak Kadarivel", "deepak@gmail.com", "**********", "+91 1234567890"]
    
    func setup(index: Int) {
        labelField.text = labels[index]
        textInputField.text = inputFields[index]
    }

}
