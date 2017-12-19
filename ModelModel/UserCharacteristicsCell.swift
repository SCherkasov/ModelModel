//
//  UserDetailCell.swift
//  ModelModel
//
//  Created by Stanislav Cherkasov on 19.12.17.
//  Copyright © 2017 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class UserCharacteristicsCell: UITableViewCell {
    
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    
    public var userChar: User? {
        didSet {
            if let userCharacteristicsUnwrapped = userChar {
                
                self.ageLabel.text = String(userCharacteristicsUnwrapped.age)
            }
            if let userCharacteristicsUnwrapped = userChar {
                self.weightLabel.text = String(userCharacteristicsUnwrapped.weight)
            }
            if let userCharacteristicsUnwrapped = userChar {
                self.heightLabel.text = String(userCharacteristicsUnwrapped.height)
            }
        }
    }
}
