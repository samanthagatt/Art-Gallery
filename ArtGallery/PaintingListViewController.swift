//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Samantha Gatt on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var tableView: UITableView!
    
    var paintingController : PaintingController?
}
