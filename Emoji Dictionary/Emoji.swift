//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Alexander Abushady on 7/12/19.
//  Copyright © 2019 Alexander Abushady. All rights reserved.
//

// Creates an emoji class to instantiate into emoji objects.
class Emoji {
    // For the emoji icon itself.
    var stringEmoji = ""
    // Holds the definition of the emoji.
    var definition = ""
    // Holds the category of the emoji.
    var category = ""
    // Holds the year the emoji was created.
    var birthYear = 0
    
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
    }}
