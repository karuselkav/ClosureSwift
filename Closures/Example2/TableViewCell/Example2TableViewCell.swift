//
//  Example2TableViewCell.swift.swift
//  Closures
//
//  Created by Karusel'ka . on 22.12.2022.
//

import UIKit

class Example2TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameButtonLabel: UIButton!
    
    var onTap : ((String) -> ())?
    
    func setCell (name : String) {
        nameButtonLabel.setTitle(name, for: .normal)
    }
    
    
    
    @IBAction func buttonTap(_ sender: Any) {
        let name = nameButtonLabel.titleLabel?.text ?? ""
        onTap?(name)
        
    }
    
}
