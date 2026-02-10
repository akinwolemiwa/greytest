//
//  ForTodayCard.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct ForTodayCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("For today")
                .font(Font.custom("Aeonik-Bold", size: 12))
                .foregroundColor(.TextBlack)
            
            Spacer().frame(height: 12)
            
            HStack {
                Image("grey-badge")
                    .resizable()
                    .frame(width: 30, height: 27)
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 9)
                    .padding(.vertical, 11)
                    .overlay(
                        Circle()
                            .stroke(Color.Grey400, lineWidth: 5)
                    )
                
                Spacer().frame(width: 12)
                
                VStack(alignment: .leading) {
                    Text("Build a login screen in React")
                        .font(Font.custom("Aeonik-Medium", size: 14))
                        .foregroundColor(.TextBlack)
                    
                    Spacer().frame(height: 3)
                    
                    HStack {
                        Image("calendar")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Component lifecycle")
                            .font(Font.custom("Aeonik-Regular", size: 14))
                            .foregroundColor(.TextBlack)
                    }
                }
                
                Spacer()
                
                Image(systemName: "chevron.forward")
                    .resizable()
                    .frame(width: 10, height: 20)
                    .aspectRatio(contentMode: .fit)
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
        )
        .shadow(color: Color.black.opacity(0.1), radius: 12, x: 0, y: 6)
    }
}

#Preview {
    ForTodayCard()
}
