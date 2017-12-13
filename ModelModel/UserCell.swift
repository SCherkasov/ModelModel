//
//  UsersTableViewCell.swift
//  ModelModel
//
//  Created by Stanislav Cherkasov on 13.12.17.
//  Copyright © 2017 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
  
    @IBOutlet weak var nameLabel: UILabel!
    
    public var user: User? {
        didSet {
            if let userUnwrapped = user {
                self.nameLabel.text = userUnwrapped.name
            }
        }
    }
    
}
