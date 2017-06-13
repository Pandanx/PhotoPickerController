//
//  PhotoGridCell.swift
//  Photos
//
//  Created by 张晓鑫 on 2017/6/1.
//  Copyright © 2017年 Wang. All rights reserved.
//

import UIKit

class PhotoGridCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var selectedImageView: UIImageView!
    
    open override var isSelected: Bool {
        didSet{
            if isSelected {
                selectedImageView.image = UIImage(named:"CellBlueSelected")
            } else {
                selectedImageView.image = UIImage(named:"CellGreySelected")
            }
        }
    }
    
    func showAnim() {
        UIView.animateKeyframes(withDuration: 0.4, delay: 0, options: UIViewKeyframeAnimationOptions.allowUserInteraction, animations: { 
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.2, animations: { 
                self.selectedImageView.transform = CGAffineTransform(scaleX: 0.7, y:0.7)
            })
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.4, animations: { 
                self.selectedImageView.transform = CGAffineTransform.identity
            })
        }, completion: nil)
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
    }
}