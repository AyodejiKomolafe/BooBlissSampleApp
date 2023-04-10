//
//  AccountViewModel.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/10/23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    
}
