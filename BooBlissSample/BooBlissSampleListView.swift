//
//  BooBlissSampleListView.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/6/23.
//

import SwiftUI

struct BooBlissSampleListView: View {
    @State private var menus: [Menu] = []
    
    var body: some View {
        NavigationView {
            List(MockData.menus) { menu in
                MenuListCell(menu: menu)
            }
            .navigationTitle("🍟 Menu")
        }
        .onAppear{
            getMenus()
        }
    }
    
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

struct BooBlissSampleListView_Previews: PreviewProvider {
    static var previews: some View {
        BooBlissSampleListView()
    }
}
