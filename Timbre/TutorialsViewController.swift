//
//  TutorialsViewController.swift
//  RWDevCon
//
//  Created by Mic Pringle on 27/02/2015.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//
// Modified by Dave Rothschild May 8, 2016

import UIKit

class TutorialsViewController: UICollectionViewController {
  
  let tutorials = Tutorial.allTutorials()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView!.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 50, right: 0)
    
    let layout = collectionViewLayout as! UICollectionViewFlowLayout
    layout.itemSize = CGSize(width: CGRectGetWidth(collectionView!.bounds), height: 140)
  }
  
}

extension TutorialsViewController {
  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return tutorials.count
  }
    
  override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("TutorialCell", forIndexPath: indexPath) as! TutorialCell
    cell.tutorial = tutorials[indexPath.item]
   
    return cell
  }
  
}