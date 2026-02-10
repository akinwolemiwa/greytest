//
//  CustomLinearProgressViewStyle.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct CustomLinearProgressViewStyle: ProgressViewStyle {
    var tintColor: Color
    var trackColor: Color
    var width: CGFloat

    func makeBody(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(trackColor)
                .frame(height: 8)
            
            Rectangle()
                .fill(tintColor)
                .frame(width: CGFloat(configuration.fractionCompleted ?? 0) * 200, height: 8)
        }
        .frame(width: width, height: 8)
        .clipShape(Capsule())
    }
}
