//
//  TutorialCell.swift
//  RWDevCon
//
//  Created by Mic Pringle on 02/03/2015.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//
// Modified by Dave Rothschild May 8, 2016

import UIKit

class TutorialCell: UICollectionViewCell {
  
  @IBOutlet private weak var titleLabel: UILabel!
  @IBOutlet private weak var timeAndRoomLabel: UILabel!
  @IBOutlet private weak var speakerLabel: UILabel!
    @IBOutlet private weak var imageView: UIImageView!
  
  var tutorial: Tutorial? {
    didSet {
      if let tutorial = tutorial {
        titleLabel.text = tutorial.title
        timeAndRoomLabel.text = tutorial.timeAndRoom
        speakerLabel.text = tutorial.speaker
        imageView.image = tutorial.backgroundImage
      }
    }
  }
    override func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes) {
        // 1
        super.applyLayoutAttributes(layoutAttributes)
        // 2
        imageView.transform = CGAffineTransformMakeRotation(degreesToRadians(14))
    }
}
