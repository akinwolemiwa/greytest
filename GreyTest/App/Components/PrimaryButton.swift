//
//  PrimaryButton.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import Foundation
import SwiftUI

struct PrimaryButton : ButtonStyle {
    var isDisabled: Bool = false
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(width: 350, height: 48)
            .background(isDisabled ? Color.Grey300 : Color.purple500)
            .cornerRadius(8)
        
    }
}

