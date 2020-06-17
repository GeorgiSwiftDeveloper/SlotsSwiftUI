//
//  ContentView.swift
//  SwiiftUISlots
//
//  Created by Georgi Malkhasyan on 6/16/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var creadits = 1000
    @State private var symbols = ["apple","banana","cherry"]
    @State private var numbers = [0,0,0,0,0,0,0,0,0]
    @State private var backgrounds = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    @State private var betAmount = 5
    
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
                    Text("Slots")
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
                VStack {
                    HStack {
                        CardView(symbol: $symbols[numbers[0]], background: $backgrounds[0])
                        CardView(symbol: $symbols[numbers[1]], background: $backgrounds[1])
                        CardView(symbol: $symbols[numbers[2]], background: $backgrounds[2])
                    }.padding(.horizontal)
                    HStack {
                        CardView(symbol: $symbols[numbers[3]], background: $backgrounds[3])
                        CardView(symbol: $symbols[numbers[4]], background: $backgrounds[4])
                        CardView(symbol: $symbols[numbers[5]], background: $backgrounds[5])
                    }.padding(.horizontal)
                    HStack {
                        CardView(symbol: $symbols[numbers[6]], background: $backgrounds[6])
                        CardView(symbol: $symbols[numbers[7]], background: $backgrounds[7])
                        CardView(symbol: $symbols[numbers[8]], background: $backgrounds[8])
                    }.padding(.horizontal)
                }
                
                Spacer()
                
                Button(action: {
                    self.backgrounds = self.backgrounds.map({ (_ ) -> Color in
                        Color.white
                    })
                    
                    self.numbers = self.numbers.map({ (_ ) -> Int in
                        Int.random(in: 0...self.symbols.count - 1)
                    })
                    
                    
                    if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2]{
                        
                        //Won
                        self.creadits += self.betAmount * 10
                        
                        self.backgrounds[0] = Color.green
                        self.backgrounds[1] = Color.green
                        self.backgrounds[2] = Color.green
                        
                    }else if  self.numbers[3] == self.numbers[4] && self.numbers[4] == self.numbers[5]{
                        self.creadits += self.betAmount * 10
                       
                        self.backgrounds[3] = Color.green
                        self.backgrounds[4] = Color.green
                        self.backgrounds[5] = Color.green
                        
                    }else if self.numbers[6] == self.numbers[7] && self.numbers[7] == self.numbers[8] {
                        self.creadits += self.betAmount * 10
                       
                        self.backgrounds[6] = Color.green
                        self.backgrounds[7] = Color.green
                        self.backgrounds[8] = Color.green
                    }else if self.numbers[2] == self.numbers[4] && self.numbers[4] == self.numbers[6] {
                        self.creadits += self.betAmount * 20
                        self.backgrounds[2] = Color.green
                        self.backgrounds[4] = Color.green
                        self.backgrounds[6] = Color.green
                    }else{
                        self.creadits -= self.betAmount
                    }
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
