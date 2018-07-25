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
            
            let painting = Painting(image: image)
            
            paintings.append(painting)
        }
    }

    var numberOfTaps = 1
    
    func toggleIsLiked(forPainting: Painting) {
        if numberOfTaps % 2 == 0 {
            forPainting.isLiked = true
            numberOfTaps += 1
        } else {
            forPainting.isLiked = false
            numberOfTaps += 1
        }
    }
    
    init () {
        loadPaintingsFromAssets()
    }
}
