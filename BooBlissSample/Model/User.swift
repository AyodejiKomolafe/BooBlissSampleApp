//
//  User.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/10/23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
    
}
