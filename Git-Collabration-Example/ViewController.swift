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
    @IBOutlet weak var uploadImageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "work")
        uploadImageButton.setTitle("Upload Image", for: .normal)
    }
    
    @IBAction func didTapImageUpload(_ sender: UIButton) {
        print("Image upload button tapped")
    }
    
}
