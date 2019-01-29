//
//  ViewController.swift
//  tableview2019_4
//
//  Created by Nosferatu on 29/01/2019.
//  Copyright © 2019 luissancar. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {
    let data:[[String]]=[["fila 1a","fila 2a","fila 3a"],
                         ["fila 1b","fila 2b","fila 3b"],
                         ["fila 1c","fila 2c","fila 3c"],
                         ["fila 1d","fila 2d","fila 3d"],]
    
    let dataSub:[[String]]=[["sub 1a","sub 2a","sub 3a"],
                         ["sub 1b","sub 2b","sub 3b"],
                         ["sub 1c","sub 2c","sub 3c"],
                         ["sub 1d","sub 2d","sub 3d"],]
    
    let headers:[String]=["header a","header b","header c","header d"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.detailTextLabel?.text=dataSub[indexPath.section][indexPath.row]
        cell.textLabel?.text=data[indexPath.section][indexPath.row]
        
        
        switch  indexPath.row{
            case 0:
                cell.imageView?.image=UIImage(named: "mario")
            case 1:
                cell.imageView?.image=UIImage(named: "ojo")
            case 2:
                cell.imageView?.image=UIImage(named: "bart")
       
            default:
                cell.imageView?.image=UIImage(named: "ojo3")
        }
        
        return cell
    }
    
}

