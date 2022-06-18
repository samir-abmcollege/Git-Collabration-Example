//
//  ViewController.swift
//  Git-Collabration-Example
//
//  Created by Dev on 6/14/22.
//

import UIKit
import SafariServices
import PhotosUI

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var uploadImageButton: UIButton!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
	title = "Collaboration"
        
        imageView.image = UIImage(named: "work")
        uploadImageButton.setTitle("Upload Image", for: .normal)
        subtitleLabel.text = "This is sub title"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    } 
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated) 
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewDidDisappear")
    }	
    
    @IBAction func didTapImageUpload(_ sender: UIButton) {
        print("Image upload button tapped")
    }
    
}
