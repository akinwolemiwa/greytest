//
//  HomeTopBar.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct HomeTopBar: View {
    var body: some View {
        HStack {
            Text("TA")
                .font(Font.custom("Aeonik-Medium", size: 16))
                .foregroundColor(.Brand900)
                .frame(width: 40, height: 40)
                .background(Circle().fill(Color.AppBlue.opacity(0.25)))
            
            Spacer()
            
            HStack {
                Image("flame")
                    .resizable()
                    .frame(width: 12, height: 14)
                    .aspectRatio(contentMode: .fit)
                
                Text("3 days")
                    .font(Font.custom("Aeonik-Bold", size: 14))
                    .foregroundColor(.Purple600)
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            .overlay(
                RoundedRectangle(cornerRadius: 120)
                    .stroke(Color.Purple100, lineWidth: 1)
            )
            
            Spacer()
            
            Image("chat-icon")
                .resizable()
                .frame(width: 23, height: 23)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .background(Circle().fill(Color.AppBlue.opacity(0.25)))
        }
    }
}

#Preview {
    HomeTopBar()
}
