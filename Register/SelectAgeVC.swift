//
//  SelectAgeVC.swift
//  Register
//
//  Created by Trương Thắng on 3/23/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class SelectAgeVC: UIViewController {

    var ageList: [Int] = Array(18...200)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: - <#Mark#>

extension SelectAgeVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ageList.count
    }
}

// MARK: - <#Mark#>

extension SelectAgeVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(ageList[row]) tuổi"
    }
}
