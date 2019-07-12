//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Alexander Abushady on 7/11/19.
//  Copyright © 2019 Alexander Abushady. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    // Variable for storing the selected emoji.
    var emoji = "NO EMOJI"

    // Outlet to the Large Emoji Picture.
    @IBOutlet weak var emojiLabel: UILabel!
    // Outlet to the definiition text.
    @IBOutlet weak var definitionLabel: UILabel!
    // Outlet to the category text.
    @IBOutlet weak var categoryLabel: UILabel!
    // Outlet to the birth year text.
    @IBOutlet weak var birthYearLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Set the Emoji to be viewed based on the user selection from the 1st view controller.
        emojiLabel.text = emoji
        
        // Set the definition text to correspond to the selected emoji.
        if emoji == "💀" {
            definitionLabel.text = "Skull"
            categoryLabel.text = "Smileys & People"
            birthYearLabel.text = "Birth Year: 2010"
        }
        
        if emoji == "💋" {
            definitionLabel.text = "Kiss Mark"
            categoryLabel.text = "Smileys & People"
            birthYearLabel.text = "Birth Year: 2010"
        }
        
        if emoji == "🤯" {
            definitionLabel.text = "Exploding Head"
            categoryLabel.text = "Smileys & People"
            birthYearLabel.text = "Birth Year: 2017"
        }
        
        if emoji == "👻" {
            definitionLabel.text = "Ghost"
            categoryLabel.text = "Smileys & People"
            birthYearLabel.text = "Birth Year: 2010"
        }
        
        if emoji == "👺" {
            definitionLabel.text = "Goblin"
            categoryLabel.text = "Smileys & People"
            birthYearLabel.text = "Birth Year: 2010"
        }
        
        if emoji == "😀" {
            definitionLabel.text = "Grinning Face"
            categoryLabel.text = "Smileys & People"
            birthYearLabel.text = "Birth Year: 2012"
        }
        
        if emoji == "😵" {
            definitionLabel.text = "Dizzy Face"
            categoryLabel.text = "Smileys & People"
            birthYearLabel.text = "Birth Year: 2010"
        }
    }
}
