//
//  CardModel.swift
//  Match App
//
//  Created by Jenna Hakki on 11/5/18.
//  Copyright © 2018 Jenna Hakki. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an array to store the generated cards
        var generatedCardsArray = [Card]()
        
        // Randomly generate pairs of cards
        for _ in 1...8 {
            
         let randomNumber = arc4random_uniform(13) + 1
            print(randomNumber)
         
            // Create the first card object
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            generatedCardsArray.append(cardOne)
            
            // Create the second card object
            let cardTwo = Card()
            cardTwo.imageName = "card\(randomNumber)"
            generatedCardsArray.append(cardTwo)
            
            // OPTIONAL: Make it so we only have unique pairs of cards
        }
        
        // TODO: Randomize the array
        
        // Return the array
        return generatedCardsArray
    }
    
}
