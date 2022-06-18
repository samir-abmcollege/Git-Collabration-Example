//
//  ViewController.swift
//  Git-Collabration-Example
//
//  Created by Dev on 6/14/22.
//

import UIKit
import PhotosUI

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "work")
        subtitleLabel.text = "This is sub title"
    }
}
