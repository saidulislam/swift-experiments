//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Saidul Islam on 2/21/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let q: String
    let a: String
    
    init(q: String, a: String) {
        self.q = q
        self.a = a
    }
}
