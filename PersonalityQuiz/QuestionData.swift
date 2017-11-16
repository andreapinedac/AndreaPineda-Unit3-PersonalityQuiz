//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Andrea Pineda on 16/11/2017.
//  Copyright © 2017 Andrea Pineda. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: EmojiType
}

enum EmojiType: Character {
    case smile = "🙂", clown = "🤡", heart = "😍", eyes = "🙄"
    
    var definition: String {
        switch self {
        case .smile:
            return "Are you happy? Are you mad? Are you lowkey judging everyone? No one knows because you are this emoji."
        case .clown:
            return "You are the life of the party and can make eveyone laugh!"
        case .heart:
            return "You love everything and everyone. When life gives you lemons, you use them well to make the best lemonade!"
        case .eyes:
            return "You are always annoyed and are the happiest being alone!"
        }
    }
}
