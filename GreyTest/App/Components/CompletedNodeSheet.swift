//
//  CompletedNodeSheet.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct CompletedNodeSheet: View {
    let nodeName: String
    @Environment(\.dismiss) var dismiss
    @State private var isShareSheetPresented = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                HStack {
                    Image("refresh")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("Flip badge")
                        .font(Font.custom("Aeonik-Regular", size: 12))
                        .foregroundColor(.TextBlack)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 120)
                        .stroke(Color.Purple100, lineWidth: 1)
                )
                
                Spacer().frame(height: 23)
                
                Image("completed-badge")
                    .resizable()
                    .frame(width: 331, height: 279)
                    .aspectRatio(contentMode: .fit)
                
                Text("\(nodeName)\nmastery earned")
                    .font(Font.custom("Aeonik-Bold", size: 28))
                    .foregroundColor(.TextBlack)
                    .multilineTextAlignment(.center)
                
                Text("Versioned & valiant. You don’t just write\ncode. You commit to it.")
                    .font(Font.custom("Aeonik-Regular", size: 14))
                    .foregroundColor(.TextBlack)
                    .multilineTextAlignment(.center)
                
                Spacer().frame(height: 23)
                
                Button(action: {
                    isShareSheetPresented = true
                }, label: {
                    Text("Share your achievement")
                        .font(Font.custom("Satoshi-Medium", size: 14))
                        .foregroundColor(.white)
                })
                .buttonStyle(PrimaryButton())
            }
            .padding()
        }
        .sheet(isPresented: $isShareSheetPresented) {
            ActivityView(activityItems: ["I just earned \(nodeName) mastery!"])
        }
    }
}

struct ActivityView: UIViewControllerRepresentable {
    let activityItems: [Any]
    let applicationActivities: [UIActivity]? = nil
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}

#Preview {
    CompletedNodeSheet(nodeName: "Maths")
}
