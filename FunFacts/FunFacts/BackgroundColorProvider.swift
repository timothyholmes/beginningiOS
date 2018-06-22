//
//  BackgroundColorProvider.swift
//  FunFacts
//
//  Created by Tim Holmes on 6/22/18.
//  Copyright © 2018 Tim Holmes. All rights reserved.
//

import UIKit
import GameKit

struct BackgroundColorProvider {
    let maxColors: Int = 255
    
    func randomBackgroundColor() -> UIColor {
        var randomColorValues: [Double] = []
        
        for _ in 1...3 {
            randomColorValues.append(Double(GKRandomSource.sharedRandom().nextInt(upperBound: maxColors)) / 255.0)
        }
        
        return UIColor(
            red: CGFloat(randomColorValues[0]),
            green: CGFloat(randomColorValues[1]),
            blue: CGFloat(randomColorValues[2]),
            alpha: 1.0
        )
    }
}
