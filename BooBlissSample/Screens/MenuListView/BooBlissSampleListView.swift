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
        ZStack {
            NavigationView {
                List(viewModel.menus) { menu in
                    MenuListCell(menu: menu)
                        .onTapGesture {
                            viewModel.selectedMenu = menu
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Menu")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear{
                viewModel.getMenus()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                MenuDetailView(menu: viewModel.selectedMenu!, isShowingDetail: $viewModel.isShowingDetail)
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
