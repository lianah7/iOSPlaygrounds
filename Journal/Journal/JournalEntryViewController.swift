//
//  JournalEntryViewController.swift
//  Journal
//
//  Created by Liana Hill on 4/7/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {

    
    @IBOutlet weak var JournalEntryContents: UITextView!
    
    var journalEntry: JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let journalEntry = journalEntry {
            JournalEntryContents.text = journalEntry.contents
//            navigationItem.title = journalEntry.description
        }

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
