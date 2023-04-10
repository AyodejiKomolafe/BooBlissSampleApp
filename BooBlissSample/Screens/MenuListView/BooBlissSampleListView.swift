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
    @State private var selectedMenu: Menu?
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.menus) { menu in
                    MenuListCell(menu: menu)
                        .onTapGesture {
                            selectedMenu = menu
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Menu")
                .disabled(isShowingDetail)
            }
            .onAppear{
                viewModel.getMenus()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            if isShowingDetail {
                MenuDetailView(menu: selectedMenu!, isShowingDetail: $isShowingDetail)
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
