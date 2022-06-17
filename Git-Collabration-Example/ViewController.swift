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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "work")
    }
}
