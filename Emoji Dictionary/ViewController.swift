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
    
    // Create an Array of emoji objects.
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // These 2 set how many rows and what contents go into the table view.
        // Sets Data Source to look to View controller
        DictionaryTableView.dataSource = self
        // Sets Delegate to look to View controller
        DictionaryTableView.delegate = self
        // Allows the function that pulls the emojis into an array to run.
        // This allows me to keep the dictionary located within the Emoji.swift file.
        let emojiArrayer = Emoji()
        // Calls the function to make each emoji object a part of the emoji array.
        emojis = emojiArrayer.makeEmojiArray()
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
        let emoji = emojis[indexPath.row] // Constant to hold the emoji based on its index in the array.
        cell.textLabel?.text = emoji.stringEmoji // Populate the cell with the emoji's picture.
        return cell
    }
    
    // This function is for creating a segue between the 1st and 2nd View Controllers.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Deselects the selection so that none of the columns are highlighted.
        tableView.deselectRow(at: indexPath, animated: true)
        // Constant that sets emoji to be the selected emoji from the 1st View Controller.
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Creates a constant for holding the Definition View Controller.
        let dVC = segue.destination as! DefinitionViewController
        dVC.emoji = sender as! Emoji
    }
}
