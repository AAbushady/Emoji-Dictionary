//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Alexander Abushady on 7/11/19.
//  Copyright © 2019 Alexander Abushady. All rights reserved.
//

import UIKit

// Added UITableViewDataSource and UITableViewDelegate to give Data Source and Delegate the ability to refer to the View Controller.
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Outlet to table view.
    @IBOutlet weak var DictionaryTableView: UITableView!
    
    // Create an Array of emojis.
    var emojis = ["😀", "😵", "👺", "👻", "💀", "🤯", "💋"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // These 2 set how many rows and what contents go into the table view.
        // Sets Data Source to look to View controller
        DictionaryTableView.dataSource = self
        // Sets Delegate to look to View controller
        DictionaryTableView.delegate = self
    }

    // Answers how many rows will be in the tableview.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the amount of items in the array and set that to be the amount of rows in the tableview.
        return emojis.count
    }
    // Answers what will be put in each row of the tableview.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Creates a constant called cell and assigns the tableview cell to it.
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }

}

