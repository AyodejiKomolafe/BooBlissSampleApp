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
                    NutritionInfo(title: "Calories", value: menu.calories)
                    NutritionInfo(title: "Carbs", value: menu.carbs)
                    NutritionInfo(title: "Protein", value: menu.protein)
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

struct NutritionInfo: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
