//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Samantha Gatt on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, PaintingTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }
    
    func likeButtonWasTapped(onCell: PaintingTableViewCell) {
        let unwrappedCell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell")
        guard let cell = unwrappedCell as? PaintingTableViewCell else { fatalError("no cell")}
        
        let indexPath = tableView.indexPath(for: cell)
        guard let unwrappedIndexPath = indexPath else { return }
        guard let index = indexPath?.row else { return }
        
        let painting = paintingController.paintings[index]
        
        paintingController.toggleIsLiked(forPainting: painting)
        
        tableView.reloadRows(at: [unwrappedIndexPath], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let unwrappedCell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell")
        guard let cell = unwrappedCell as? PaintingTableViewCell else { fatalError("no cell")}
        
        let painting = paintingController.paintings[indexPath.row]
        cell.painting = painting
        
        cell.delegate = self
        
        return cell
    }

    
    @IBOutlet weak var tableView: UITableView!
    
    var paintingController = PaintingController()
}
