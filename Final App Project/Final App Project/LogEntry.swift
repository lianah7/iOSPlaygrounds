//
//  LogEntry.swift
//  Final App Project
//
//  Created by Liana Hill on 4/16/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import Foundation

// This struct sets up the style and type for the description and the title of the entry

struct LogEntry: CustomStringConvertible {
    let date: Date
    let contents: String
    let dateFormatter = DateFormatter()
    
    var description: String {
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: date)
    }
}
