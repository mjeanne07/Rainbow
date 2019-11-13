//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Morgan Smith on 11/12/19.
//  Copyright © 2019 Morgan Smith. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    //cell color is dependent on the table view controllers selected color
    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews () {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }
}
