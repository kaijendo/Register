//
//  SelectCityTableVC.swift
//  Register
//
//  Created by Trương Thắng on 3/13/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class SelectCityTableVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        data = DataServices.shared.cities

        // Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selectedIndex = tableView.indexPathForSelectedRow {
            DataServices.shared.selectedCity = DataServices.shared.cities[selectedIndex.row]
        }
    }
}
