//
//  OrderView.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/6/23.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { menu in
                            MenuListCell(menu: menu)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    Button {
                        print("order placed")
                    } label: {
                        MenuButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no item in your order. \nPlease add an item from the menu!")
                }
            }
            .navigationTitle("🧾 Orders ")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
