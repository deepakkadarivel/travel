//
//  HomeViewController.swift
//  RoadYatri
//
//  Created by Deepak Kadarivel on 12/04/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

let cellIdentifier = "TimelineCell"

class HomeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let destinations = Destination.allDestinations()
    let colors = UIColor.palette()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.backgroundColor = UIColor.clearColor()
        self.collectionView!.decelerationRate = UIScrollViewDecelerationRateFast

    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // Navigationbar setup
        let nav = self.navigationController?.navigationBar
        nav?.translucent = false
//        let img = UIImage()
//        self.navigationController?.navigationBar.shadowImage = img
//        self.navigationController?.navigationBar.setBackgroundImage(img, forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.barTintColor = Colors.White
        self.navigationController!.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Philosopher", size: 16)!, NSForegroundColorAttributeName: Colors.Black]
        self.navigationController?.navigationBar.topItem!.title = "ROADYATRI"
    }

}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.destinations.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellIdentifier, forIndexPath: indexPath) as! TimelineCollectionViewCell
        cell.destination = destinations[indexPath.item]
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        NavigationUtil.gotoDestinationDetail(self, destinationValue: destinations[indexPath.row])
    }

}