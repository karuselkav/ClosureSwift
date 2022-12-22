//
//  ViewControllerB.swift
//  Closures
//
//  Created by Karusel'ka . on 22.12.2022.
//

import UIKit

class ViewControllerB: UITableViewController {

    var completion: ((String) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "Example2TableViewCell", bundle: nil), forCellReuseIdentifier: "Example2TableViewCell")
    
    }

    
    
    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Example2TableViewCell", for: indexPath) as! Example2TableViewCell
        cell.selectionStyle = .none
        cell.setCell(name: "Some data" + "\(indexPath.row)")
        
        cell.onTap = { name in
            self.completion?(name)
            self.navigationController?.popViewController(animated: true)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }


}
