//
//  LearningPathDetailView.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct LearningPathDetailView: View {
    @Environment(\.dismiss) var dismiss
    @State private var showCompletedSheet = false
    @State private var selectedNode: String = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Stage 3 of 11")
                        .font(Font.custom("Aeonik-Regular", size: 14))
                        .foregroundColor(.TextGrey)
                    
                    Text("Fullstack mobile\nengineer path")
                        .font(Font.custom("Aeonik-Bold", size: 24))
                        .foregroundColor(.TextBlack)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                LearningPathComponent(
                    showCompletedSheet: $showCompletedSheet,
                    selectedNode: $selectedNode
                )
            }
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .background(Color.white)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 15)
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
        .sheet(isPresented: $showCompletedSheet) {
            CompletedNodeSheet(nodeName: selectedNode)
        }
    }
}

#Preview {
    NavigationStack {
        LearningPathDetailView()
    }
}
