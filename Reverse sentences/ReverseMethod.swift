//
//  ReverseMethod.swift
//  Reverse sentences
//
//  Created by Елизавета Ефросинина on 18.02.2022.
//

import Foundation
class MainViewModel {
    
    func reverseWords(sentence: String) -> String {
        let allWords = sentence.split(separator: " ")
        var newSentence = ""
        for word in allWords {
            if newSentence != "" {
                newSentence += " "
            }
          newSentence.append(contentsOf: word.reversed())
        }
        return newSentence
    }
}
