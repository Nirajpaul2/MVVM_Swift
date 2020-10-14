//
//  Testfile.swift
//  MVVM
//
//  Created by Niraj Paul on 14/10/20.
//  Copyright © 2020 administrator. All rights reserved.
//

import Foundation


class Person {
    
    var name: String?
    
    var job: Job?
    
    init(name: String) {
        self.name = name
    }
    
}

class Job {
    var jobType: String
    
    var person: Person?
    
    init(jobType: String) {
        self.jobType = jobType
    }
    
}
