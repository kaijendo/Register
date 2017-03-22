//
//  DataServices.swift
//  Register
//
//  Created by Trương Thắng on 3/12/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import Foundation

class DataServices {
    static let shared : DataServices = DataServices()
    private var _cities: [City]!
    
    var cities: [City] {
        set {
            _cities = newValue
        }
        get {
            if _cities == nil {
                update(places: &(_cities), fromFileName: "Cities.plist", rootKey: "Cities")
            }
            return _cities
        }
    }
    private var _districts: [District]!
    var districts: [District] {
        set {
            _districts = newValue
        }
        get {
            if _districts == nil {
                update(places: &_districts, fromFileName: "Districts.plist", rootKey: "Districts")
            }
            return _districts
        }
    }
    
    var selectedCity: City? {
        didSet {
            if selectedCity != nil {
                districtsAtSelectedCity = districts.filter{$0.cityCode == selectedCity!.code}
            } else {
                districtsAtSelectedCity = nil
            }
        }
    }
    
    var districtsAtSelectedCity: [District]?
    
    func update<T: PlaceProtocol>(places: inout [T]!, fromFileName fileName: String, rootKey: String) {
        places = []
        guard let root = PlistServices().getDictionaryFrom(plist: fileName) else {
            return
        }
        
        // 2: Lấy ra một mảng dữ liệu thông qua key "Cities"
        
        guard let placeDictionaries = root[rootKey] as? [Dictionary<AnyHashable, Any>] else {return}
        
        for dict in placeDictionaries {
            if let place = T(dict: dict) {
                places.append(place)
            }
        }
        print(places)
    }
    
}


