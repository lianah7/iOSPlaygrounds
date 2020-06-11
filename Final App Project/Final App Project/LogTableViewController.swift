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
            

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
// The following lines of code sets the name of the log entries with the date and appends the user's log entry so it can be displayed when the user selects the cell
    
    @IBAction func done(segue: UIStoryboardSegue) {
        let newLogEntry = segue.source as! NewLogEntryViewController
        log.entries.append(LogEntry(date: Date(), contents: newLogEntry.logEntryContents.text))
        tableView.reloadData()
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
    
//  The following lines of code sets up the log entry as an entry to be displayed in the LogTableViewController
    
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
