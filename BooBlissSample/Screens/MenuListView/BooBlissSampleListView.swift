//
//  BooBlissSampleListView.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/6/23.
//

import SwiftUI

struct BooBlissSampleListView: View {
    @StateObject var viewModel = BooBlissSampleListViewModel()
    @State private var isShowingDetail = false
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.menus) { menu in
                    MenuListCell(menu: menu)
                        .onTapGesture {
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Menu")
            }
            .onAppear{
                viewModel.getMenus()
            }
            if isShowingDetail {
                MenuDetailView(menu: MockData.sampleMenu)
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

struct BooBlissSampleListView_Previews: PreviewProvider {
    static var previews: some View {
        BooBlissSampleListView()
    }
}
