//
//  ColorProvider.swift
//  FunFacts
//
//  Created by Steve Wall on 2/3/20.
//  Copyright © 2020 Stephen Wall. All rights reserved.
//

import UIKit
import GameKit

struct ColorProvider {
    let colors = [
        UIColor(red: 244.0 / 255.0, green: 67.0 / 255.0, blue: 54.0 / 255.0, alpha: 1.0),
        UIColor(red: 236.0 / 255.0, green: 64.0 / 255.0, blue: 122.0 / 255.0, alpha: 1.0),
        UIColor(red: 156.0 / 255.0, green: 39.0 / 255.0, blue: 176.0 / 255.0, alpha: 1.0),
        UIColor(red: 33.0 / 255.0, green: 150.0 / 255.0, blue: 243.0 / 255.0, alpha: 1.0),
        UIColor(red: 0.0 / 255.0, green: 188.0 / 255.0, blue: 54.0 / 255.0, alpha: 1.0),
        UIColor(red: 102.0 / 255.0, green: 187.0 / 255.0, blue: 106.0 / 255.0, alpha: 1.0),
        UIColor(red: 251.0 / 255.0, green: 192 / 255.0, blue: 45 / 255.0, alpha: 1.0),
        UIColor(red: 255.0 / 255.0, green: 152.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0),
        UIColor(red: 158.0 / 255.0, green: 158.0 / 255.0, blue: 158.0 / 255.0, alpha: 1.0)
    ]
    
    func getRandomColor() -> UIColor {
         let index = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[index]
    }
}
