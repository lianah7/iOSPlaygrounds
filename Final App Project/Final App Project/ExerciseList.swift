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
        exercises = ["Hammer Curl": Exercise(description: "Hold the weights down by your sides, with your palms facing inward and thumbs facing up. Start with your elbows pulled into your sides and curl the weights up to your shoulders. Finish the movement by extending your arms down slowly and with control. Do 10 reps of 2-3 sets", image: UIImage(named: "Hammer Curl")!), "Feet Elevated Push-Up": Exercise(description: "Place your toes on a sturdy, elevated surface - like a bench, box, or step - and position yourself in a plank position with your hands shoulder-width-apart. Keep your hands flat and your shoulders above your wrists. Remember to keep your core and glutes engaged. And your body should be a straight line from head to toe. Bend your elbows and lower your chest to the floor. Once you get as low as you can, push through the palms of your hands to straighten your arms.Do 10 reps of 3 sets.", image: UIImage(named: "Feet Elevated Pushup")!)]
    }
}

//https://www.youtube.com/watch?v=X0fCMwAMZY8 for passing data from table view to view controller for exercises
