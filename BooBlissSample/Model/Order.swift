//
//  Order.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/10/23.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Menu] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ menu: Menu) {
        items.append(menu)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    
}

