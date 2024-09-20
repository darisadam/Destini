//
//  Story.swift
//  Destini
//
//  Created by Adam Daris Ryadhi on 20/09/24.
//

import Foundation

struct Story {
    var text: String
    var option1: String
    var option1Destination: Int
    var option2: String
    var option2Destination: Int
    
    init(text: String, option1: String, option1Destination: Int, option2: String, option2Destination: Int) {
        self.text = text
        self.option1 = option1
        self.option1Destination = option1Destination
        self.option2 = option2
        self.option2Destination = option2Destination
    }
}
