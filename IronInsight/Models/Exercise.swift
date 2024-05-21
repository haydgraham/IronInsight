//
//  Exercise.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/20/24.
//

import Foundation
import SwiftData

@Model
class Exercise {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
