//
//  EmptyState.swift
//  BooBlissSample
//
//  Created by Kvng Eko on 4/10/23.
//

import SwiftUI

struct EmptyState: View {
    let imageName: String
    let message: String
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y:-50)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-order", message: "test message made a little long for testing")
    }
}
