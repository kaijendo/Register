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
                updateCities()
            }
            return _cities
        }
    }
    
    func updateCities() {
        _cities = []
        let fileName = "Cities.plist"
        guard let root = PlistServices().getDictionaryFrom(plist: fileName) else {
            return
        }
        
        // 2: Lấy ra một mảng dữ liệu thông qua key "Cities"
        
        guard let cityDictionaries = root["Cities"] as? [Dictionary<AnyHashable, Any>] else {return}
        
        for dict in cityDictionaries {
            if let city = City(dict: dict) {
                _cities.append(city)
            }
        }
        print(cities)
    }
    
    private var _districts: [District]!
    var districts: [District] {
        set {
            _districts = newValue
        }
        get {
            if _districts == nil {
                updateDistricts()
            }
            return _districts
        }
    }
    
    func updateDistricts() {
        _districts = []
        
        let fileName = "Districts.plist"
        guard let root = PlistServices().getDictionaryFrom(plist: fileName) else {
            return
        }
        
        // 2: Lấy ra một mảng dữ liệu thông qua key "District"
        
        guard let cityDictionaries = root["Districts"] as? [Dictionary<AnyHashable, Any>] else {return}
        
        for dict in cityDictionaries {
            if let district = District(dict: dict) {
                _districts.append(district)
            }
        }
        print(districts)
    }
    
}


