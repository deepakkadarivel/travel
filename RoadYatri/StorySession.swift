//
//  StorySession.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 13/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class StorySession {
    
    
    var image: UIImage
    var likeCount: String
    var commentCount: String
    var subs: String
    var title: String
    var time: String
    var userName: String
    var userImage: UIImage
    
    init(image: UIImage, likeCount: String, commentCount: String, subs: String, title: String, time: String, userName: String, userImage: UIImage) {
        self.image = image
        self.likeCount = likeCount
        self.commentCount = commentCount
        self.subs = subs
        self.title = title
        self.time = time
        self.userName = userName
        self.userImage = userImage
    }
    
    convenience init(dictionary: NSDictionary) {
        let likeCount = dictionary["LikeCount"] as? String
        let commentCount = dictionary["CommentCount"] as? String
        let title = dictionary["Title"] as? String
        let subs = dictionary["Subs"] as? String
        let imageName = dictionary["Image"] as? String
        let time = dictionary["Time"] as? String
        let userName = dictionary["UserName"] as? String
        let userImageName = dictionary["UserImage"] as? String
        let image = UIImage(named: imageName!)
        let userImage = UIImage(named: userImageName!)
        self.init(image: image!.decompressedImage, likeCount: likeCount!, commentCount: commentCount!, subs: subs!, title: title!, time: time!, userName: userName!, userImage: userImage!.decompressedImage)
    }
    
}
