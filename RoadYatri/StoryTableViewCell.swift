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
    
    var userImages = ["story_user1", "story_user2"]
    var userNames = ["Sandeepa Chetan", "Chintan Doshi"]
    var storyTimes = ["April 5, 2016", "November 22, 2012"]
    var storyHeaders = ["South Kashmir circuit: Non \"touristy\" fit for all travelers","My trip to Kashmir"]
    var storyBodys = ["Our 45 days in Kashmir took us to some remote, unseen and unknown parts of the Kashmir valley. Yet, the instant image...", "I was very happy to see the Dal lake as have heard alot about it from my friends. We halted in the boat house for 3 days and we didn't even felt that we are staying in the boat. During the stay in Srinagar we had visited…"]
    var likeCounts = ["24","36"]
    var commentCounts = ["71","192"]
    
    func setup(index: Int) {
        userImage.image = UIImage(named: userImages[index])
        userName.text = userNames[index]
        time.text = storyTimes[index]
        storyHeader.text = storyHeaders[index]
        storyBody.text = storyBodys[index]
        likeCount.text = likeCounts[index]
        commentCount.text = commentCounts[index]
    }

}
