//
//  NodeView.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct NodeView: View {
    let icon: String
    let title: String
    var isCompleted: Bool = false
    var isActive: Bool = false
    var ifGrey: Bool = false
    
    @Binding var showCompletedSheet: Bool
    @Binding var selectedNode: String
    
    init(icon: String, title: String, isCompleted: Bool = false, isActive: Bool = false, ifGrey: Bool = false, showCompletedSheet: Binding<Bool> = .constant(false), selectedNode: Binding<String> = .constant("")) {
        self.icon = icon
        self.title = title
        self.isCompleted = isCompleted
        self.isActive = isActive
        self.ifGrey = ifGrey
        self._showCompletedSheet = showCompletedSheet
        self._selectedNode = selectedNode
    }
    
    var body: some View {
        VStack(spacing: 12) {
            ZStack {
                if isActive {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 110, height: 110)
                        .overlay(
                            Circle()
                                .trim(from: 0, to: 0.25)
                                .stroke(Color.AppBlue, lineWidth: 5)
                                .overlay(
                                    Circle()
                                        .trim(from: 0.25, to: 1)
                                        .stroke(Color.AppBlue.opacity(0.2), lineWidth: 5)
                                )
                                .rotationEffect(.degrees(-90))
                        )
                }
                
                if ifGrey {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 110, height: 110)
                        .overlay(
                            Circle()
                                .stroke(Color.grey400, lineWidth: 5)
                        )
                }
                
                Image(icon)
                    .resizable()
                    .frame(width: 82, height: 72)
                    .aspectRatio(contentMode: .fit)
            }
            
            Text(title)
                .font(Font.custom("Aeonik-Bold", size: 12))
                .foregroundColor(.TextBlack)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
        }
        .onTapGesture {
            if isCompleted {
                selectedNode = title
                showCompletedSheet = true
            }
        }
    }
}

#Preview {
    NodeView(icon: "", title: "")
}
