//
//  District.swift
//  Register
//
//  Created by Trương Thắng on 3/22/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import Foundation


struct District: PlaceProtocol{
    var name = ""
    var cityCode = 0
    var districtCode = 0
    
    init?(name: String, cityCode: Int, districtCode: Int) {
        guard cityCode > 0 else { return nil }
        guard districtCode > 0 else { return nil }
        guard name != "" else { return nil }
        self.name = name
        self.districtCode = districtCode
        self.cityCode = cityCode
    }
    
    // 4: parse dữ liệu để được model Districts
    
    init?(dict: Dictionary<AnyHashable, Any>) {
        guard let name = dict["Name"] as? String else {return nil}
        guard let cityCode = dict["CityCode"] as? Int else {return nil}
        guard let districtCode = dict["DistrictCode"] as? Int else {return nil}
        self.init(name: name, cityCode: cityCode, districtCode: districtCode)
    }
    
}
