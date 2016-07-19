//
//  Extensions.swift
//  Extensions
//
//  Created by Kenneth Cooke on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


extension String {
    
    
    var unicornLevel: String {
        
        get{
            
            var unicornLevel = ""
            
            for character in self.characters {
                
                if character != " " {
                
                unicornLevel += "🦄"
                    
                }
                
            }
            
            return unicornLevel
            
        }
        
        
    }
    
    
    var points: Int {
        
        get{
            
            var points = 0
            let vowels = ["a", "e", "i", "o", "u", "y", "A", "E", "I", "O", "U", "Y"]
            let charactersToIgnore = [" ", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
            
            for character in self.characters {
                
                
                if vowels.contains(String(character)){
                    
                    points += 2
                    
                } else if !charactersToIgnore.contains(String(character)){
                    
                    points += 1
                }
                
            }
            
            return points
            
        }
        
        
        
    }
    
    var pigLatin: String {
        
        get{
            
            let sentenceArray = self.componentsSeparatedByString(" ")
            
            var piggedArray: [String] = []
            
            for word in sentenceArray {
                
                var wordToPig = word
                
                if wordToPig.characters.count > 1 {
                    
                    let firstLetter = wordToPig.removeAtIndex(wordToPig.startIndex)
    
                    let firstLetterLowercase = String(firstLetter).lowercaseString
                    
                    
                    wordToPig.appendContentsOf(firstLetterLowercase)
                
                    
                    wordToPig.appendContentsOf("ay")
                    
                    
                    let capitalizedWordToPig = wordToPig.capitalizedString
                    
                    piggedArray.append(capitalizedWordToPig)
                    
                } else {
                
                piggedArray.append(wordToPig)
                    
                }
                
            }
            
            let piggedSentence = piggedArray.joinWithSeparator(" ")
            
            return piggedSentence
            
        }
        
    }
    
    
    func whisper() -> String {
        
        let whisperString = self.lowercaseString
        
        return whisperString
        
    }
    
    func shout() -> String {
        
        let shoutString = self.uppercaseString
        
        return shoutString
        
    }
    
}

extension Int {
    
    var squared: Int {
        
         get{
            
            var squaredNumber: Int = self
            
            squaredNumber = squaredNumber * squaredNumber
            
            return squaredNumber
            
        }
        
    }
    
    var halved: Int {
    
    get{
    
    return half()
    
    }
    
    
    }
    
    
    func half() -> Int {
        
        var numberToHalve = self
        
        numberToHalve = numberToHalve/2
        
        return numberToHalve
        
    }
    
    func isDivisibleBy(divisibleBy: Int) -> Bool {
        
        if self % divisibleBy == 0 {
            
            return true
            
        } else {
            
            return false
            
        }
        
    }
    
    mutating func square() {
        
        self = self * self
        
    }
    
}

