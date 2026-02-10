//
//  ActiveLearningCard.swift
//  GreyTest
//
//  Created by AKIN on 10/02/2026.
//

import SwiftUI

struct ActiveLearningCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 34) {
            Text("Active learning path")
                .font(Font.custom("Aeonik-Bold", size: 16))
                .foregroundColor(.TextBlack)

            VStack(alignment: .leading, spacing: 12) {
                Text("Fullstack mobile Engineer")
                    .font(Font.custom("Aeonik-Medium", size: 14))
                    .foregroundColor(.TextBlack)

                HStack(spacing: 8) {
                    Text("Stage 3 of 11")
                        .font(Font.custom("Aeonik-Regular", size: 12))
                        .foregroundColor(.TextBlack)

                    ProgressView(value: 23.0 / 100.0)
                        .progressViewStyle(
                            CustomLinearProgressViewStyle(
                                tintColor: Color.Purple500,
                                trackColor: Color.Purple100,
                                width: 120
                            )
                        )
                }

                NavigationLink {
                    LearningPathDetailView()
                } label: {
                    HStack(spacing: 6) {
                        Text("View full path")
                            .font(Font.custom("Aeonik-Medium", size: 12))
                        Image(systemName: "arrow.right")
                            .font(.system(size: 12, weight: .semibold))
                    }
                    .foregroundColor(.white)
                }
                .buttonStyle(PrimaryButton())
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 18)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ActiveLearningCard_Previews: PreviewProvider {
    static var previews: some View {
        ActiveLearningCard()
            .preferredColorScheme(.light)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
