//
//  ContentView.swift
//  Dicee
//
//  Created by Ashwin Gupta on 25/2/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                }.background(Color.red)
            }.padding(.bottom)
        }
        
    }
}

struct DiceView: View {
    let n: Int
    
    var body: some View {
        
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit)
            .padding()
    }
}


#Preview {
    ContentView()
}

