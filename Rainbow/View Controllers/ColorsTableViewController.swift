//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Morgan Smith on 11/12/19.
//  Copyright © 2019 Morgan Smith. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colors: [MyColor] = [MyColor(name: "Red", color: .red), MyColor(name: "Orange", color: .orange), MyColor(name: "Yellow", color: .yellow), MyColor(name: "Green", color: .green), MyColor(name: "Blue", color: .blue), MyColor(name: "Cyan", color: .cyan), MyColor(name: "Purple", color: .purple)
                
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    // These are the 2 required Data Source Methods!! Must Haves!!
    //This is how many rows in the table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    //This is the data in the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // (0,0) - the index path of where the rows are
       // (0,1)
       //(0,2)...
       //(0,7)
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name
       
        return cell
    }
    
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
        if segue.identifier == "ShowColorSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow, let colorDetailVC = segue.destination as? ColorDetailViewController else {return}
            
            let cellColor = colors[indexPath.row]
            
            colorDetailVC.cellColor = cellColor
        }
     // Pass the selected object to the new view controller.
     }
    
}
