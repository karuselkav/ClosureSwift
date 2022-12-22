//
//  Example3ViewController.swift
//  Closures
//
//  Created by Karusel'ka . on 22.12.2022.
//

import UIKit

class Example3ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let manager = APIManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setView()
    }
    
    func setView() {
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOpacity = 1
        imageView.layer.shadowOffset = .zero
        imageView.layer.shadowRadius = 10
        imageView.layer.shouldRasterize = true
    }
    
    func downloadImage() {
        manager.downloadImage { image in
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
    }
    
    
    @IBAction func buttonTap(_ sender: Any) {
        downloadImage()
    }
    
}
