//
//  ContentView.swift
//  SwiiftUISlots
//
//  Created by Georgi Malkhasyan on 6/16/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
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
                
                HStack{
                    Image(systemName: "star.fill")
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(Color.white)
                    Image(systemName: "star.fill")
                }.scaleEffect(2)
                
                Text("Credits: 1000")
                    .foregroundColor(Color.black)
                    .padding(.all)
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(20)
                
                HStack {
                    Spacer()
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5)).cornerRadius(20)
                    
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5)).cornerRadius(20)
                    
                    
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5)).cornerRadius(20)
                    Spacer()
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
