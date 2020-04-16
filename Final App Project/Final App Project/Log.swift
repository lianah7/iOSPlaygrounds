//
//  Log.swift
//  Final App Project
//
//  Created by Liana Hill on 4/16/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import Foundation

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
