//
//  BooBlissSampleApp.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/6/23.
//

import SwiftUI

@main
struct BooBlissSampleApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            BooBlissSampleTabView().environmentObject(order)
        }
    }
}
