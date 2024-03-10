//
//  ContentView.swift
//  AshwinCard
//
//  Created by Ashwin Gupta on 25/2/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("profile-photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Ashwin Gupta")
                    .font(Font.custom("Montserrat", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(text: "+61 424 044 885", imageName: "phone.fill")
                InfoView(text: "ashwingupta@hotmail.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}


