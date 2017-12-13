//
//  UsersTableViewCell.swift
//  ModelModel
//
//  Created by Stanislav Cherkasov on 13.12.17.
//  Copyright © 2017 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class UsersCell: UITableViewCell {
  
    var user: User
  
        init(with user: User) {
           super.init()
            self.user = user
         
        }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
