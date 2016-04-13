//
//  StoryTableViewCell.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 13/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class StoryTableViewCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var storyHeader: UILabel!
    @IBOutlet weak var storyBody: UILabel!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var commentCount: UILabel!
    
    var story: Story? {
        didSet {
            if let story = story {
                userImage.image = story.userImage
                userName.text = story.userName
                time.text = story.time
                storyHeader.text = story.title
                storyBody.text = story.subs
                likeCount.text = story.likeCount
                commentCount.text = story.commentCount
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.userImage.layer.cornerRadius = self.userImage.frame.size.width / 2
        self.userImage.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
