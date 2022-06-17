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
    
    override func viewDidLoad() {
        super.viewDidLoad()
	title = "Collaboration"
        
        imageView.image = UIImage(named: "work")
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
}
