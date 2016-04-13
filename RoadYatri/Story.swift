//
//  Story.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 13/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class Story: StorySession {
    
    class func allStories() -> [Story] {
        var stories = [Story]()
        if let URL = NSBundle.mainBundle().URLForResource("Stories", withExtension: "plist") {
            if let tutorialsFromPlist = NSArray(contentsOfURL: URL) {
                for dictionary in tutorialsFromPlist {
                    let story = Story(dictionary: dictionary as! NSDictionary)
                    stories.append(story)
                }
            }
        }
        return stories
    }
    
}
