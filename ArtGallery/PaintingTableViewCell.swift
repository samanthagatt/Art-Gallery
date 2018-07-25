//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Samantha Gatt on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate : class {
    func likeButtonWasTapped(onCell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {

    @IBAction func paintingLikeButtonTapped(_ sender: Any) {
        delegate?.likeButtonWasTapped(onCell: self)
    }
    
    weak var delegate : PaintingTableViewCellDelegate?
    
    
    private func updateViews() {
        
        guard let painting = painting else {return}
        
        paintingImageView.image = painting.image
        
        if painting.isLiked == false {
            paintingLikeButton.setTitle("Like", for: .normal)
        } else {
            paintingLikeButton.setTitle("Unlike", for: .normal)
        }
        
    }
    
    var painting : Painting? {
        didSet{
            updateViews()
        }
    }
    
    @IBOutlet weak var paintingImageView: UIImageView!
    
    @IBOutlet weak var paintingLikeButton: UIButton!
    
}
