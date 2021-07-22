//
//  ViewController.swift
//  ShoppingList
//
//  Created by Student27 on 7/22/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var shoppingListTableView: UITableView!
    
    var items = ["Gummy Bears", "Peanut Butter", "Almound Oil"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shoppingListTableView.dataSource = self
        shoppingListTableView.delegate = self
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return items.count

     }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}
