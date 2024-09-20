//
//  StoryBrain.swift
//  Destini
//
//  Created by Adam Daris Ryadhi on 20/09/24.
//

import Foundation

struct StoryBrain {
    
    var storyIndex = 0
    
    var stories = [
        Story(text: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
              option1: "I'll hop in. Thanks for the help!", option1Destination: 2,
              option2: "Better ask him if he's a murderer first.", option2Destination: 1
             ),
        Story(text: "He nods slowly, unfazed by the question.",
              option1: "At least he's honest. I'll climb in.", option1Destination: 2,
              option2: "Wait, I know how to change a tire.", option2Destination: 3
             ),
        Story(text: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
              option1: "I love Elton John! Hand him the cassette tape.", option1Destination: 5,
              option2: "It's him or me! You take the knife and stab him.", option2Destination: 4
             ),
        Story(text: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
              option1: "The", option1Destination: 0,
              option2: "End", option2Destination: 0
             ),
        Story(text: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
              option1: "The", option1Destination: 0,
              option2: "End", option2Destination: 0
             ),
        Story(text: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
              option1: "The", option1Destination: 0,
              option2: "End", option2Destination: 0
             ),
    ]
    
    func getStory() -> String {
        return stories[storyIndex].text
    }
    
    func getOption1() -> String {
        return stories[storyIndex].option1
    }
    
    func getOption2() -> String {
        return stories[storyIndex].option2
    }
    
    mutating func nextStory(userInput: String) {
        let currentStory = stories[storyIndex]
        
        if userInput == currentStory.option1 {
            storyIndex = currentStory.option1Destination
        } else if userInput == currentStory.option2 {
            storyIndex = currentStory.option2Destination
        }
    }
    
}
