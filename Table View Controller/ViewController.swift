//
//  ViewController.swift
//  Table View Controller
//
//  Created by Andre Linces on 25/08/21.
//

import UIKit

class ViewController: UITableViewController{
    
    var dados: [String] = ["Lasanha", "Pizza", "Tropeiro"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dados.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //var _: IndexPath.Index
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = dados [indexPath.row]
        return celula
        
    }
}

