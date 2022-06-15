//
//  ViewController.swift
//  Git-Collabration-Example
//
//  Created by Dev on 6/14/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: nil),
            UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: nil)
        ]
    }


}

