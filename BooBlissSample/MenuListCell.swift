//
//  MenuListCell.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/6/23.
//

import SwiftUI

struct MenuListCell: View {
    let menu: Menu
    var body: some View {
        HStack {
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(menu.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(menu.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

struct MenuListCell_Previews: PreviewProvider {
    static var previews: some View {
        MenuListCell(menu: MockData.sampleMenu)
    }
}
