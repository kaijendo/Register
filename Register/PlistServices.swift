//
//  PlistServices.swift
//  Register
//
//  Created by Kai Jendo on 7/31/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import Foundation
class PlistServices {
    func usingFile(with file: String) -> [AnyHashable: Any]? {
        var result: Dictionary<AnyHashable, Any>?
        let fileNameComponents = file.components(separatedBy: ".")
        guard let filePath = Bundle.main.path(forResource: fileNameComponents.first ?? "", ofType: fileNameComponents.last ?? "") else {
            return nil
        }
        guard FileManager.default.fileExists(atPath: filePath), let data = FileManager.default.contents(atPath: filePath) else {
            return nil
        }
        do {
            guard let root = try PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [AnyHashable: Any] else {
                return nil
            }
            result = root
        }
        catch {
            print("Error to open file")
        }
        return result
    }
}
