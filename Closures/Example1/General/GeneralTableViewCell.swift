//
//  GeneralTableViewCell.swift
//  Closures
//
//  Created by Karusel'ka . on 22.12.2022.
//

import UIKit

class GeneralTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var onTap : (()->())?
    
    func setCell(name : String) {
        self.nameLabel.text = name
    }
    
    
    @IBAction func buttonAction(_ sender: Any) {
        onTap?()
    }
    
}
