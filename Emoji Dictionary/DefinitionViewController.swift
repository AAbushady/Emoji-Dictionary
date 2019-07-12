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
    var emoji = Emoji()

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
        // Also set the labels to the corresponding information for each emoji.
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Origination Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
    }
}
