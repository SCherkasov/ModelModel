//
//  FirstTableViewController.swift
//  ModelModel
//
//  Created by Stanislav Cherkasov on 12.12.17.
//  Copyright © 2017 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var usersArray = [User]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "USERS"
        makeUser()
    }
    
    func makeUser() {
        usersArray.append(User(uname: "Vasiliy", uage: 17, uweight: 56, uheight: 166.8))
        usersArray.append(User(uname: "Katya", uage: 22, uweight: 50.5, uheight: 170))
        usersArray.append(User(uname: "Olga", uage: 30, uweight: 58.8, uheight: 160))
        usersArray.append(User(uname: "Sveta", uage: 10, uweight: 35, uheight: 137))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellFirst", for: indexPath)
        
        cell.textLabel?.text = usersArray[indexPath.row].name

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
