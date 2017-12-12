//
//  UserStructure.swift
//  ModelModel
//
//  Created by Stanislav Cherkasov on 12.12.17.
//  Copyright © 2017 Stanislav Cherkasov. All rights reserved.
//

import Foundation
import UIKit

class User {
    var name: String
    var age: Int
    var weight: Double
    var height: Double
    
    
    init(uname: String, uage: Int, uweight: Double, uheight: Double) {
        name = uname
        age = uage
        weight = uweight
        height = uheight
    }
}
