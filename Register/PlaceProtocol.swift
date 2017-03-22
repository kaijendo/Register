//
//  PlaceProtocol.swift
//  Register
//
//  Created by Trương Thắng on 3/22/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import Foundation

protocol PlaceProtocol {
    var name: String {get set}
    init?(dict: Dictionary<AnyHashable, Any>)
}
