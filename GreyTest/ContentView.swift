//
//  ContentView.swift
//  GreyTest
//
//  Created by AKIN on 09/02/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HomeScreen()
                .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
