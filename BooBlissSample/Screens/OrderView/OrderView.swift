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
            .navigationTitle("🧾 Orders ")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
