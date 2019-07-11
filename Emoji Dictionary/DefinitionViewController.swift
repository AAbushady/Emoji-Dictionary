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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Set the Emoji to be viewed based on the user selection from the 1st view controller.
        emojiLabel.text = emoji
        
        // Set the definition text to correspond to the selected emoji.
        if emoji == "💀" {
            definitionLabel.text = "Spoopy Skelleton!"
        }
        
        if emoji == "💋" {
            definitionLabel.text = "Kiss Kiss"
        }
        
        if emoji == "🤯" {
            definitionLabel.text = "Mind...Blown...."
        }
        
        if emoji == "👻" {
            definitionLabel.text = "Spoopy Ghost!"
        }
        
        if emoji == "👺" {
            definitionLabel.text = "Tengu so mad."
        }
        
        if emoji == "😀" {
            definitionLabel.text = "Smiles all around!"
        }
        
        if emoji == "😵" {
            definitionLabel.text = "I died..."
        }
    }
}
