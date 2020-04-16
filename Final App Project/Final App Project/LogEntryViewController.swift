//
//  LogEntryViewController.swift
//  Final App Project
//
//  Created by Liana Hill on 4/16/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import UIKit

class LogEntryViewController: UIViewController {

    @IBOutlet weak var logEntryContents: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let logEntry = logEntry {
            logEntryContents.text = logEntry.contents

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
}
