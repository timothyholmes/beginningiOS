//
//  FactProvider.swift
//  FunFacts
//
//  Created by Tim Holmes on 6/22/18.
//  Copyright © 2018 Tim Holmes. All rights reserved.
//

import GameKit

struct FactProvider {
    let facts: [String] = [
        "Real G’s move in silence like Lasagna.",
        "always talk to god never listen to cops",
        "Safe sex is great sex Better wear a latex Cuz you dont want that late text that \"I think I’m late\" text",
        "I’m cooking up 2 quarters, bout 2 get rich or die tryin",
        "Above the law, but under the influence",
        "Adam’s apple meet banana clip,  You know my script, I just get my chips and then I dip"
    ]
    
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        
        return facts[randomNumber]
    }
}
