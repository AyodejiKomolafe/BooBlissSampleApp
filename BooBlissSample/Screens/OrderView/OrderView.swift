//
//  OrderView.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/6/23.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.orderItems
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { menu in
                            MenuListCell(menu: menu)
                        }
                        .onDelete { indexSet in
                            orderItems.remove(atOffsets: indexSet)
                        }
                    }
                    .listStyle(PlainListStyle())
                    Button {
                        print("order placed")
                    } label: {
                        MenuButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no item in your order. \nPlease add an item from the menu!")
                }
            }
            .navigationTitle("🧾 Orders ")
        }
    }
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
