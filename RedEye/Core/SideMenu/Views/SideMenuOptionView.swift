//
//  SideMenuOptionView.swift
//  RedEye
//
//  Created by Khushank on 12/12/24.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel: SideMenuOptionViewModel
    
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: viewModel.imageName)
                .font(.title2)
                .imageScale(.medium)
                
                Text(viewModel.title)
                    .font(.system(size: 16, weight: .semibold))
                
                Spacer()
        }
        .foregroundColor(Color.theme.primaryTextColor)
    }
}

//#Preview {
//    SideMenuOptionView(viewModel: .trips)
//}
