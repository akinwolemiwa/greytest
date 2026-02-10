//
//  LearningPathComponent.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct LearningPathComponent: View {
    @Binding var showCompletedSheet: Bool
    @Binding var selectedNode: String
    
    var body: some View {
            ZStack {
                VStack {
                    Spacer().frame(height: 50)
                    
                    Image("lines")
                        .resizable()
                        .frame(width: 330, height: 935)
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                }
                
                VStack(spacing: 0) {
                    HStack(spacing: 100) {
                        NodeView(
                            icon: "purple-badge",
                            title: "Programming\nBasics",
                            isCompleted: true,
                            showCompletedSheet: $showCompletedSheet,
                            selectedNode: $selectedNode
                        )
                        
                        NodeView(
                            icon: "purple-badge",
                            title: "Git & Version\nControl",
                            isCompleted: true,
                            showCompletedSheet: $showCompletedSheet,
                            selectedNode: $selectedNode
                        )
                        .padding(.top, 20)
                    }
                   
                    Spacer().frame(height: 50)
                    
                    HStack(spacing: 100) {
                        NodeView(
                            icon: "grey-badge",
                            title: "Core Mobile\nUI Build",
                            isCompleted: false,
                            ifGrey: true
                        )
                        .padding(.bottom, 20)
                        
                        
                        NodeView(
                            icon: "blue-badge",
                            title: "Learn React\nComponent lifecycle",
                            isCompleted: false,
                            isActive: true
                        )
                        .padding(.bottom, 60)
                    }
                    
                    HStack(spacing: 100) {
                        NodeView(
                            icon: "grey-badge",
                            title: "Access Device Features",
                            isCompleted: false,
                            ifGrey: true
                            
                        )
                        .padding(.leading, 60)
                        
                        NodeView(
                            icon: "grey-badge",
                            title: "Navigations\nand Forms",
                            isCompleted: false,
                            ifGrey: true
                        )
                    }
                    
                    HStack(spacing: 100) {
                        NodeView(
                            icon: "grey-badge",
                            title: "Node.js & Express",
                            isCompleted: false,
                            ifGrey: true
                        )
                        .padding(.top, 40)
                        
                        NodeView(
                            icon: "grey-badge",
                            title: "Backend\nArchitecture",
                            isCompleted: false,
                            ifGrey: true
                        )
                        .padding(.top, 20)
                    }
                 
                    HStack(spacing: 90) {
                        NodeView(
                            icon: "grey-badge",
                            title: "Authentication &\nAuthorization",
                            isCompleted: false,
                            ifGrey: true
                        )
                        
                        NodeView(
                            icon: "grey-badge",
                            title: "Write and\nRun Tests",
                            isCompleted: false,
                            ifGrey: true
                        )
                        .padding(.top, 50)
                    }
                    
                    NodeView(
                        icon: "grey-badge",
                        title: "Publish your\nMobile App",
                        isCompleted: false,
                        ifGrey: true
                    )
                    .padding(.top, 20)
                    
                    Spacer().frame(height: 40)
                }
            }
        }
    }

#Preview {
    LearningPathComponent(showCompletedSheet: .constant(true), selectedNode: .constant("Maths"))
}
