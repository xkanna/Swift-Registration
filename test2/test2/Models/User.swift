//
//  User.swift
//  test2
//
//  Created by Katarina Veljkovic on 03/07/2020.
//  Copyright © 2020 Katarina Veljkovic. All rights reserved.
//

import Foundation

enum Gender {
    case male
    case female
}

struct User {
    let firstName: String
    let lastName: String
    let date: String
    let gender: Gender
    let description: String
    let height: Float
    let weight: Float
    
}
