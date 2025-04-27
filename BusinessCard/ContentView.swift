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
                Image("profile-pic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(.cyan), lineWidth: 5))
                Text("Jonathan Cheth")
                    .bold()
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                Text("iOS & Web Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InformationView(text: "+1 818 888 8888", imageName: "phone.fill")
                InformationView(text: "jscheth@notareal.email", imageName: "envelope")
            }
        }
    }
}

#Preview {
    ContentView()
}

struct InformationView: View {
    
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
