//
//  StoryDetailTableViewCell.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 13/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class StoryDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var uaserImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var storyTitle: UILabel!
    @IBOutlet weak var storySubs: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.uaserImage.layer.cornerRadius = self.uaserImage.frame.size.width / 2
        self.uaserImage.clipsToBounds = true
        
        self.storyImage.layer.cornerRadius = 3
        self.storyImage.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func set(story: Story) {
        uaserImage.image = story.userImage
        storyImage.image = story.image
        userName.text = story.userName
        time.text = story.time
        storyTitle.text = story.title
        storySubs.text = story.subs
    }
    
}
