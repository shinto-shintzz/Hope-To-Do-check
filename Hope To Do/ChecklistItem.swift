//
//  ChecklistItem.swift
//  Hope To Do
//
//  Created by Shinto Joseph on 21/05/18.
//  Copyright © 2018 Shinto Joseph. All rights reserved.
//

import Foundation

class ChecklistItem{
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
