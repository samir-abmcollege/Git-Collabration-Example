//
//  ViewController.swift
//  Git-Collabration-Example
//
//  Created by Dev on 6/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickDisplay: UIButton!
    @IBOutlet weak var commentService: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showPage(_ sender: UIButton, forEvent event: UIEvent) {
        let currentLabel = commentService.text
        if (currentLabel == "You just click a button. ") {
            commentService.text = "You click the button again"
        }
        else
        {
            commentService.text = "You just click a button"
        }
        
        commentService.sizeToFit()
    }
}
