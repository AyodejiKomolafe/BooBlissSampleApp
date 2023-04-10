//
//  MenuDetailView.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/10/23.
//

import SwiftUI

struct MenuDetailView: View {
    let menu: Menu
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            MenuRemoteImage(urlString: menu.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack {
                Text(menu.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(menu.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("\(menu.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("\(menu.carbs)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack(spacing: 5) {
                        Text("Protein")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("\(menu.protein)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }
            Spacer()
            
            Button {
                print("tapped")
            } label: {
                MenuButton(title: "$\(menu.price, specifier: "%.2f") - Add to Order")
                
            }
            .padding(.bottom, 30)

        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
        

    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(menu: MockData.sampleMenu, isShowingDetail: .constant(true))
    }
}
