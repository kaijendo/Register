//
//  City.swift
//  Register
//
//  Created by Trương Thắng on 3/22/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import Foundation

struct City {
    var name = ""
    var code = 0
    
    init?(name: String, code: Int) {
        guard code > 0 else { return nil }
        guard name != "" else { return nil }
        self.name = name
        self.code = code
    }
    
    // 3: parse dữ liệu để được model City 
    
    init?(dict: Dictionary<AnyHashable, Any>) {
        guard let name = dict["Name"] as? String else {return nil}
        guard let code = dict["CityCode"] as? Int else {return nil}
        self.init(name: name, code: code)
    }
    
}
