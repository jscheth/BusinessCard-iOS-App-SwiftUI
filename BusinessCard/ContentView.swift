//
//  ContentView.swift
//  BusinessCard
//
//  Created by Jonathan Cheth on 4/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.06, green: 0.74, blue: 0.98, opacity: 1.00)
                .ignoresSafeArea()
            VStack {
                Text("Jonathan Cheth")
                    .bold()
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                Text("iOS & Web Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
