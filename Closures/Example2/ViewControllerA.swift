//
//  ViewControllerA.swift
//  Closures
//
//  Created by Karusel'ka . on 22.12.2022.
//

import UIKit

class ViewControllerA: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    let viewControllerB = ViewControllerB()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        setView()
    }
    
    
    func setView() {
        view.backgroundColor = .white
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
    }

   @objc func buttonTap() {
        openViewControllerB()
    }
    
    
    func openViewControllerB () {
        self.navigationController?.pushViewController(self.viewControllerB, animated: true)

        viewControllerB.completion = { name in
        self.titleLabel.text = name

        }
    }
    
}
