//
//  SwiftUIView.swift
//  BusinessCard
//
//  Created by Jonathan Cheth on 4/27/25.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.cyan)
                Text(text)
            })
            .padding(.all)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InfoView(text: "+1 818 888 8888", imageName: "phone.fill")
}
