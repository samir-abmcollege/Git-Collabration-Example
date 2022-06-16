//
//  ViewController.swift
//  Git-Collabration-Example
//
//  Created by Dev on 6/14/22.
//

import UIKit
import PhotosUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(showAlbum)),
            UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: nil)
        ]

    }
    
    @objc func showAlbum() {
        var config = PHPickerConfiguration()
        config.selectionLimit = 1
        config.filter = PHPickerFilter.images
        
        let pickerVC = PHPickerViewController(configuration: config)
        pickerVC.delegate = self
        self.present(pickerVC, animated: true, completion: nil)
        
        
    }
}

extension ViewController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true)
        
        guard let provider = results.first?.itemProvider else {
            return
        }
        
        if provider.canLoadObject(ofClass: UIImage.self) {
            provider.loadObject(ofClass: UIImage.self) { [weak self] maybeImage, maybeError in
                guard let image = maybeImage as? UIImage,
                      maybeError == nil,
                      let imageData = image.pngData() else {
                    print("ERROR: \(String(describing: maybeError))")
                    return
                }
            
                DispatchQueue.main.async {
                let pushImage = ImageVC()
                pushImage.getImage = image
                guard let vc = self?.storyboard?.instantiateViewController(identifier: "showImage") as? ImageVC else {
                    return
            }
                self?.navigationController?.pushViewController(vc, animated: true)
                }
        }
    }
    }
}
