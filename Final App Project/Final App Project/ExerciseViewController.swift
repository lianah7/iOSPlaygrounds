//
//  ExerciseViewController.swift
//  Final App Project
//
//  Created by Liana Hill on 4/27/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {
    
//The following lines on code are variables for the selected exercise, title, description, and image
    
    @IBOutlet weak var exerciseLabel: UILabel!
    
    @IBOutlet weak var exerciseDescription: UITextView!
    
    @IBOutlet weak var exerciseImage: UIImageView!
    
//The two following lines of code help pass the
    
    var currentExercise: Exercise?
    var currentExerciseTitle: String? 
 
//The following lines of code sets and displays the selected exercise's description, image, and name onto the ExerciseViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exerciseDescription.text = currentExercise?.description
        exerciseImage.image = currentExercise?.image
        exerciseLabel.text = currentExerciseTitle 
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
