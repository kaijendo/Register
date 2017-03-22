//
//  SelectDistrictTableVC.swift
//  Register
//
//  Created by Trương Thắng on 3/13/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class SelectDistrictTableVC: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        data = DataServices.shared.districtsAtSelectedCity
        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
}
