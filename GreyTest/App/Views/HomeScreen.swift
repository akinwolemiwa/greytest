//
//  HomeScreen.swift
//  GreyTest
//
//  Created by AKIN on 09/02/2026.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack(alignment: .top) {
                HomeBackground()

                VStack {
                    Spacer().frame(height: 50)
                    
                    HomeTopBar()
                    
                    RobotSection()
                    
                    Spacer().frame(height: 38)
                    
                    ForTodayCard()
                    
                    Spacer().frame(height: 32)
                    
                    ActiveLearningCard()
                    
                    Spacer().frame(height: 52)
                    
                    BadgesCard()
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.top, 16)
            }
            .frame(maxWidth: .infinity, alignment: .top)
        }
        .ignoresSafeArea(edges: .top)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    HomeScreen()
}
