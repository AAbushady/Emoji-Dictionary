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
        // Calls the function to make each emoji object a part of the emoji array.
        emojis = makeEmojiArray()
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
    
    // This function creates an emoji object for each given emoji and returns an array to incorporate into the emojis array.
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2012
        emoji1.category = "Smileys & People"
        emoji1.definition = "Grinning Face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😵"
        emoji2.birthYear = 2010
        emoji2.category = "Smileys & People"
        emoji2.definition = "Dizzy Face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "👺"
        emoji3.birthYear = 2010
        emoji3.category = "Smileys & People"
        emoji3.definition = "Goblin"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👻"
        emoji4.birthYear = 2010
        emoji4.category = "Smileys & People"
        emoji4.definition = "Ghost"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "💀"
        emoji5.birthYear = 2010
        emoji5.category = "Smileys & People"
        emoji5.definition = "Skull"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🤯"
        emoji6.birthYear = 2017
        emoji6.category = "Smileys & People"
        emoji6.definition = "Exploding Head"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "💋"
        emoji7.birthYear = 2010
        emoji7.category = "Smileys & People"
        emoji7.definition = "Kiss Mark"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }
    
}

