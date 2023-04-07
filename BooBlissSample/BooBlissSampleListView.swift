//
//  BooBlissSampleListView.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/6/23.
//

import SwiftUI

struct BooBlissSampleListView: View {
    @StateObject var viewModel = BooBlissSampleListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.menus) { menu in
                MenuListCell(menu: menu)
            }
            .navigationTitle("🍟 Menu")
        }
        .onAppear{
            viewModel.getMenus()
        }
    }
}

struct BooBlissSampleListView_Previews: PreviewProvider {
    static var previews: some View {
        BooBlissSampleListView()
    }
}
