//
//  ExerciseList.swift
//  Final App Project
//
//  Created by Liana Hill on 5/1/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import Foundation
import UIKit

struct ExerciseList {
    var exercises: [String: Exercise]
    
    init() {
        exercises = ["Hammer Curl": Exercise(description: "write description here - full sentences", image: UIImage(named: "Hammer Curl")!), "Feet Elevated Push-Up": Exercise(description: "description here", image: UIImage(named: "Feet Elevated Pushup")!)]
    }
}
