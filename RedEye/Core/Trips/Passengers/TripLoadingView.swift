//
//  TripLoadingView.swift
//  RedEye
//
//  Created by Khushank on 12/14/24.
//

import SwiftUI

struct TripLoadingView: View {
    var body: some View {
        VStack{
            Capsule()
                .foregroundColor(Color(.systemGray5))
                .frame(width: 48, height: 6)
                .padding(.top, 8)
            HStack {
                Text("Finding your RED EYE")
                    .font(.headline)
                    .padding()
                
                Spacer()
                Spinner(lineWidth: 6, height: 35, width: 35)
                    .padding()
            }
            .padding(.bottom, 24)
        }
        .background(Color.theme.backgroundColor)
        .cornerRadius(16)
        .shadow(color: Color.theme.secondaryBackgroundColor, radius: 20)
    }
}

#Preview {
    TripLoadingView()
}
