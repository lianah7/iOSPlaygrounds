//
//  NewLogEntryViewController.swift
//  Final App Project
//
//  Created by Liana Hill on 4/17/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import UIKit

class NewLogEntryViewController: UIViewController {

// The following lines of code sets up the cancel button in the user's new log entry
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var logEntryContents: UITextView!
    
    var log: Log?
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
