//
//  ImageVC.swift
//  Git-Collabration-Example
//
//  Created by Jordan Peralta on 2022-06-15.
//

import UIKit

class ImageVC: UIViewController {
    
    var getImage: UIImage?

    @IBOutlet weak var showImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showImage.image = getImage
    }
}
