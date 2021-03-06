//
//  ExerciseTableViewController.swift
//  Final App Project
//
//  Created by Liana Hill on 4/22/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import UIKit


class ExerciseTableViewController: UITableViewController {
// receives information
    var exerciseList: ExerciseList?
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
// The following lines of code sets up the number of cells based on the number of exercises for each target area
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return exerciseList!.exercises.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseDisplay", for: indexPath)

//The following lines of code sets the title for each cell in the table view as the name of the exercise
        
        let listOfExercises = Array<String>((exerciseList?.exercises.keys)!)
        cell.textLabel?.text = listOfExercises[indexPath.row]
        

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
    
//The following lines of code prepares the description and image of the selected exercise to be passed onto the ExerciseViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let exercises = Array<String>((exerciseList?.exercises.keys)!)
            if segue.identifier == "selectedExercise" {
                if let exerciseViewController = segue.destination as? ExerciseViewController,
                let cell = sender as? UITableViewCell,
                let indexPath = self.tableView.indexPath(for: cell),
                    let exercise = exerciseList!.exercises[exercises[indexPath.row]] {
                    exerciseViewController.currentExercise = exercise
                    exerciseViewController.currentExerciseTitle = exercises[indexPath.row]

            }
        }
    }


}
