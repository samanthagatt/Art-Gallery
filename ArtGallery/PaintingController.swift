//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Samantha Gatt on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit


class PaintingController {
    
    private(set) var paintings : [Painting] = []

    func loadPaintingsFromAssets() {
        for x in 1...12 {
            let paintingName = "Image\(x)"
            guard let image = UIImage(named: paintingName) else { return }
            
            let painting = Painting(image: image, isLiked: false)
            
            paintings.append(painting)
        }
    }

    
    func toggleIsLiked(forPainting: Painting) {
        if forPainting.isLiked == false {
            forPainting.isLiked = true
        } else {
            forPainting.isLiked = false
        }
    }
    
    init () {
        loadPaintingsFromAssets()
    }
}
