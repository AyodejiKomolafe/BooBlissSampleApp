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
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedMenu: Menu?
    
    func getMenus() {
        isLoading = true
        NetworkManager.shared.getMenus { result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result {
                case .success(let menus):
                    self.menus = menus
                case .failure(let error ):
                    switch error {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
