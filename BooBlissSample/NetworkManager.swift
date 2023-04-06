//
//  NetworkManager.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/6/23.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    static let menuURL = baseURL + "appetizers"
    
    private init() {}
    
    func getMenus(completed: @escaping (Result<[Menu], Error>) -> Void) {
        
    }
}
