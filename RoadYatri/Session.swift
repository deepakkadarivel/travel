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
    var image: UIImage
    var detail: String
    
    init(title: String,  subs: String, image: UIImage, detail: String) {
        self.title = title
        self.subs = subs
        self.image = image
        self.detail = detail
    }
    
    convenience init(dictionary: NSDictionary) {
        let title = dictionary["Title"] as? String
        let subs = dictionary["Subs"] as? String
        let imageName = dictionary["Image"] as? String
        let detail = dictionary["Detail"] as? String
        let image = UIImage(named: imageName!)
        self.init(title: title!, subs: subs!, image: image!.decompressedImage, detail: detail!)
    }
    
}
