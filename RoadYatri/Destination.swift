//
//  Destination.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class Destination: Session {
    
    class func allDestinations() -> [Destination] {
        var destinations = [Destination]()
        if let URL = NSBundle.mainBundle().URLForResource("Destinations", withExtension: "plist") {
            if let tutorialsFromPlist = NSArray(contentsOfURL: URL) {
                for dictionary in tutorialsFromPlist {
                    let destination = Destination(dictionary: dictionary as! NSDictionary)
                    destinations.append(destination)
                }
            }
        }
        return destinations
    }
    
}

