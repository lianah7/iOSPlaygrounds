//
//  JournalTableViewController.swift
//  Final App Project
//
//  Created by Liana Hill on 4/16/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import UIKit

class LogTableViewController: UITableViewController {
    
    let cellReuseIdentifier = "LogEntryCell"
    let logEntrySegueIdentifier = "logEntry"
    let newLogEntrySegueIdentifier = "newLogEntry"
    var log = Log()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0...4 {
            log.entries.append(LogEntry(date: Date(), contents: "Contents for entry\(index)"))
        }
            

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    @IBAction func done(segue: UIStoryboardSegue) {
           let newLogEntry = segue.source as! NewLogEntryViewController
           log.entries.append(LogEntry(date: Date(), contents: newLogEntry.logEntryContents.text))
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return log.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        if let label = cell.textLabel,
            let entry = log.entry(index: indexPath.row) {
                label.text = "\(entry)" }
        return cell
    }

        // Configure the cell...

        
    

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
        if segue.identifier == logEntrySegueIdentifier {
            if let logEntryViewController = segue.destination as? LogEntryViewController, let cell = sender as? UITableViewCell, let indexPath = self.tableView.indexPath(for: cell), let entry = log.entry(index: indexPath.row) {
                logEntryViewController.logEntry = entry
            }
        } else if segue.identifier == newLogEntrySegueIdentifier {
            if let newLogEntryViewController = segue.destination as? NewLogEntryViewController {
                newLogEntryViewController.log = log
        }
    
    
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}

}
