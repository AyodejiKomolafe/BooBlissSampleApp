//
//  Menu.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/6/23.
//

import Foundation

struct Menu: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}


struct MenuResponse: Decodable {
    let request: [Menu]
}

struct MockData {
    static let sampleMenu = Menu(id: 001, name: "Test Menu", description: "This is the description for my menu, its yummy", price: 10.0, imageURL: "", calories: 10, protein: 10, carbs: 10)
    
    static let menus = [sampleMenu, sampleMenu, sampleMenu, sampleMenu]
}
