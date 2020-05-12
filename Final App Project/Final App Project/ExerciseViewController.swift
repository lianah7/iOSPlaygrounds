//
//  ExerciseViewController.swift
//  Final App Project
//
//  Created by Liana Hill on 4/27/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {
    
    @IBOutlet weak var exerciseImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    

        // Do any additional setup after loading the view.
    }
    
    //https://www.youtube.com/watch?v=X0fCMwAMZY8 for passing data from table view to view controller for exercises
    
      override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          var name2 = String()
          
          tableView.deselectRow(at: indexPath, animated: true)
          
          let exercise = exerciseList[indexPath.row]
          name2 = (exercise.value(forKey: "shoulder") as? String)!
          
          let storyboard = UIStoryboard(name: "Main")
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
