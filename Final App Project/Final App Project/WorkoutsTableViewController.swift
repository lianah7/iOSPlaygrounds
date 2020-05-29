//
//  WorkoutsTableViewController.swift
//  Final App Project
//
//  Created by Liana Hill on 4/22/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import UIKit

class WorkoutsTableViewController: UITableViewController {

   // var listOfExercises = ExerciseList()
    var workouts = [String: ExerciseList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        workouts = [
            "Biceps": ExerciseList(exercises:
                ["Hammer Curls": Exercise(description: "Hammer something", image: UIImage()),
                 "More Hammer Curls": Exercise(description: "do more things", image: UIImage()),
                 "Something else": Exercise(description: "Keep going", image: UIImage())
            ]),
            "Shoulders": ExerciseList(exercises:
                ["Pushups": Exercise(description: "Bend those elbows", image: UIImage(named: "Push-Ups")!),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage())
            ]),
            "Triceps": ExerciseList(exercises:
                ["Pull downs": Exercise(description: "Bend those elbows", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "pully-thingy": Exercise(description: "Need a chin up bar", image: UIImage())
            ])
        ]
            
//        workouts = ["Biceps": ExerciseList(exercises: ["Hammer Curls": Exercise(description: "Hold the weights down by your sides, with your palms facing inward and thumbs facing up. Start with your elbows pulled into your sides and curl the weights up to your shoulders. Finish the movement by extending your arms down slowly and with control. Do 10 reps of 2-3 sets", image: UIImage())], ["Feet Elevated Push-Up": Exercise(description: "Place your toes on a sturdy, elevated surface - like a bench, box, or step - and position yourself in a plank position with your hands shoulder-width-apart. Keep your hands flat and your shoulders above your wrists. Remember to keep your core and glutes engaged. And your body should be a straight line from head to toe. Bend your elbows and lower your chest to the floor. Once you get as low as you can, push through the palms of your hands to straighten your arms.Do 10 reps of 3 sets.", image: UIImage())],]
        
//        "Triceps": ExerciseList(),
//        "Chest":ExerciseList(),
//        "Abs":ExerciseList(),
//        "Oblique": ExerciseList(),
//        "Quads":ExerciseList(),
//        "Hamstrings":ExerciseList(),
//        "Calves":ExerciseList() ]
      

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return workouts.keys.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "workouts", for: indexPath)
        let bodyParts = Array(workouts.keys)
        cell.textLabel?.text = bodyParts[indexPath.row]
        
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let bodyParts = Array(workouts.keys)
        if segue.identifier == "exercises" {
            if let exerciseViewController = segue.destination as? ExerciseTableViewController,
            let cell = sender as? UITableViewCell,
            let indexPath = self.tableView.indexPath(for: cell),
            let exercise = workouts[bodyParts[indexPath.row]] {
                exerciseViewController.exerciseList = exercise
            
        }
    }
    

}
}
