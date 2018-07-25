//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Samantha Gatt on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBAction func paintingLikeButtonTapped(_ sender: Any) {
    }
    
    
    private func updateViews() {
        
        guard let painting = painting else {return}
        
        paintingImageView.image = painting.image
        
        if painting.isLiked == false {
            paintingLikeButton.titleLabel?.text = "Like"
        } else {
            paintingLikeButton.titleLabel?.text = "Unlike"
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
