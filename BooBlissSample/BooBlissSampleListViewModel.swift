//
//  BooBlissSampleListViewModel.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/7/23.
//

import Foundation
final class BooBlissSampleListViewModel: ObservableObject {
    @Published var menus: [Menu] = []
    @Published var alertItem: AlertItem?
    
    func getMenus() {
        NetworkManager.shared.getMenus { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let menus):
                    self.menus = menus
                case .failure(let error ):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
