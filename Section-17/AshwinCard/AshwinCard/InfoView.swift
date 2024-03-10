//
//  InfoView.swift
//  AshwinCard
//
//  Created by Ashwin Gupta on 25/2/2024.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName: imageName).foregroundColor(.green)
                    Text(text)
                })
            .padding(.all)
    }
}

#Preview {
    InfoView(text: "Hello", imageName: "phone.fill").previewLayout(.sizeThatFits)
}
