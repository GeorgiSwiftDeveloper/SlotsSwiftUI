//
//  ContentView.swift
//  SwiiftUISlots
//
//  Created by Georgi Malkhasyan on 6/16/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State  private var creadits = 1000
    private var symbols = ["apple","banana","cherry"]
    @State private var numbers = [0,0,0]
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                HStack{
                    Image(systemName: "star.fill")
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(Color.white)
                    Image(systemName: "star.fill")
                }.scaleEffect(2)
                Spacer()
                Text("Credits: \(creadits)")
                    .foregroundColor(Color.black)
                    .padding(.all)
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(20)
                Spacer()
                HStack {
                    Spacer()
                    Image(symbols[numbers[0]])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5)).cornerRadius(20)
                    
                    Image(symbols[numbers[1]])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5)).cornerRadius(20)
                    
                    
                    Image(symbols[numbers[2]])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5)).cornerRadius(20)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    self.numbers[0] = Int.random(in: 0...self.symbols.count - 1)
                    
                    self.numbers[1] = Int.random(in: 0...self.symbols.count - 1)
                    
                    self.numbers[2] = Int.random(in: 0...self.symbols.count - 1)
                }) {
                    Text("Spin")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading,.trailing], 30)
                        .cornerRadius(20)
                        .background(Color.pink)
                    
                }
                Spacer()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
