//
//  NewJournalEntryViewController.swift
//  Journal
//
//  Created by Liana Hill on 4/7/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func cancel(_ sender: UIBarButtonItem) {
           dismiss(animated: true, completion: nil)
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
