//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber: Int = 0
    let stories: [Story] = [Story(title: "You see a fork in the road.", choice1: "Take a left", choice2: "Take a right"),
                            Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
                            Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    mutating func nextStory(_ userChoice: String) {
        if userChoice == stories[storyNumber].choice1 {
            storyNumber += 1
        } else {
            storyNumber += 2
        }
    }
    
}
