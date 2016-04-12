//
//  Session.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class Session {
    
    var title: String
    var subs: String
    var backgroundImage: UIImage
    
    init(title: String,  subs: String, backgroundImage: UIImage) {
        self.title = title
        self.subs = subs
        self.backgroundImage = backgroundImage
    }
    
    convenience init(dictionary: NSDictionary) {
        let title = dictionary["Title"] as? String
        let subs = dictionary["Subs"] as? String
        let backgroundName = dictionary["Background"] as? String
        let backgroundImage = UIImage(named: backgroundName!)
        self.init(title: title!, subs: subs!, backgroundImage: backgroundImage!.decompressedImage)
    }
    
}
