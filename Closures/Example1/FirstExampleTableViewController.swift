//
//  FirstExampleTableViewController.swift
//  Closures
//
//  Created by Karusel'ka . on 22.12.2022.
//

import UIKit

class FirstExampleTableViewController: UITableViewController {

    let detailVC = DetailViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "GeneralTableViewCell", bundle: nil), forCellReuseIdentifier: "GeneralTableViewCell")
    
    }

    // MARK: - Table view data source

 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GeneralTableViewCell", for: indexPath) as! GeneralTableViewCell
        cell.selectionStyle = .none
        cell.setCell(name: "Lorem Impsum")
        
        cell.onTap = {
            self.navigationController?.pushViewController(self.detailVC, animated: true)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }


}
