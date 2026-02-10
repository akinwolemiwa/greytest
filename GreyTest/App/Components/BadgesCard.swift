//
//  BadgesCard.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct BadgesCard: View {
    var body: some View {
        VStack {
            Text("Badges")
                .font(Font.custom("Aeonik-Bold", size: 16))
                .foregroundColor(.TextBlack)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer().frame(height: 12)
            
            HStack {
                VStack(alignment: .center) {
                    Image("blue-badge")
                        .resizable()
                        .frame(width: 80, height: 72)
                        .aspectRatio(contentMode: .fit)
                    
                    Spacer().frame(height: 9)
                    
                    Text("Genius")
                        .font(Font.custom("Aeonik-Medium", size: 12))
                        .foregroundColor(.TextBlack)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("3/3 perfect scores")
                        .font(Font.custom("Aeonik-Regular", size: 10))
                        .foregroundColor(.TextGrey)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                Spacer()
                
                VStack(alignment: .center) {
                    Image("special")
                        .resizable()
                        .frame(width: 80, height: 72)
                        .aspectRatio(contentMode: .fit)
                    
                    Spacer().frame(height: 9)
                    
                    Text("Genius")
                        .font(Font.custom("Aeonik-Medium", size: 12))
                        .foregroundColor(.TextBlack)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("3/3 perfect scores")
                        .font(Font.custom("Aeonik-Regular", size: 10))
                        .foregroundColor(.TextGrey)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                Spacer()
                
                VStack(alignment: .center) {
                    Image("purple-badge")
                        .resizable()
                        .frame(width: 80, height: 72)
                        .aspectRatio(contentMode: .fit)
                    
                    Spacer().frame(height: 9)
                    
                    Text("Genius")
                        .font(Font.custom("Aeonik-Medium", size: 12))
                        .foregroundColor(.TextBlack)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("3/3 perfect scores")
                        .font(Font.custom("Aeonik-Regular", size: 10))
                        .foregroundColor(.TextGrey)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer().frame(height: 12)
        }
    }
}

#Preview {
    BadgesCard()
}
