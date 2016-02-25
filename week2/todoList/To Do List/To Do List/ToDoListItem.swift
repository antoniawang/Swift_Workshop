//
//  ToDoListItem.swift
//  To Do List
//
//  Created by Antonia Wang on 2/24/16.
//  Copyright © 2016 Antonia Wang. All rights reserved.
//

import Foundation

// To Do List Items
class ToDoListItem {
    
    var text = ""
    var description = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
