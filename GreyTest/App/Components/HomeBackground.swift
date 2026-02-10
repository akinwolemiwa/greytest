//
//  HomeBackground.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct HomeBackground: View {
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                Image("background")
                    .resizable()
                    .aspectRatio(375.0 / 417.0, contentMode: .fit)
                    .frame(width: proxy.size.width)
                    .ignoresSafeArea(edges: .top)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    HomeBackground()
}
