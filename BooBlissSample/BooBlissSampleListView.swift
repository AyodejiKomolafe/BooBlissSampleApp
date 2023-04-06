//
//  BooBlissSampleListView.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/6/23.
//

import SwiftUI

struct BooBlissSampleListView: View {
    var body: some View {
        NavigationView {
            List(MockData.menus) { menu in
                MenuListCell(menu: menu)
            }
            .navigationTitle("🍟 Menu")
        }
    }
}

struct BooBlissSampleListView_Previews: PreviewProvider {
    static var previews: some View {
        BooBlissSampleListView()
    }
}
