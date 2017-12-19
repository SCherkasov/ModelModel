//
//  FirstTableViewController.swift
//  ModelModel
//
//  Created by Stanislav Cherkasov on 12.12.17.
//  Copyright © 2017 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class UserNameTableViewController: UITableViewController {
    
    static var usersCharacteristics =
        [
            User(name: "Vasiliy", age: 17, weight: 56, height: 166.8),
            User(name: "Katya", age: 22, weight: 50.5, height: 170),
            User(name: "Olga", age: 30, weight: 58.8, height: 160),
            User(name: "Sveta", age: 10, weight: 35, height: 137)
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "USERS"
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserNameTableViewController.usersCharacteristics.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellFirst", for: indexPath)
        
        if let cellUnwrapped = cell as? UserCell {
            cellUnwrapped.user = UserNameTableViewController.usersCharacteristics[indexPath.row]
        }
        
        return cell
    }
    
}
