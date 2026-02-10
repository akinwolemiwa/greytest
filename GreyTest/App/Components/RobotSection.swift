//
//  RobotSection.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct RobotSection: View {
    var body: some View {
        Image("robot")
            .resizable()
            .frame(width: 162, height: 173)
            .aspectRatio(contentMode: .fit)
        
        Text("Good morning Alex!")
            .font(Font.custom("Aeonik-Bold", size: 28))
            .foregroundColor(.TextBlack)
        
        Spacer().frame(height: 5)
        
        Text("You’re closer than you think 💪🏾")
            .font(Font.custom("Aeonik-Regular", size: 14))
            .foregroundColor(.TextBlack)    }
}

#Preview {
    RobotSection()
}
