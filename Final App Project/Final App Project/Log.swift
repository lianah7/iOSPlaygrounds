//
//  Log.swift
//  Final App Project
//
//  Created by Liana Hill on 4/16/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import Foundation

//This struct sets up the LogTableViewController - the add buttom, the title of the entry and the index of each entry 

struct Log {
    var entries = [LogEntry]()
    var count: Int {
        return entries.count
    }
    mutating func add(entry:LogEntry) {
        entries.append(entry)
    }

    func entry(index:Int) -> LogEntry? {
        if index >= 0 && index < entries.count {
            return entries[index]
        }
        else {
            return nil
        }
    }
}
