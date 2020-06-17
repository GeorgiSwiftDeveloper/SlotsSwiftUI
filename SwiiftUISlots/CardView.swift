//
//  CardView.swift
//  SwiiftUISlots
//
//  Created by Georgi Malkhasyan on 6/17/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @Binding var symbol: String
    @Binding var background: Color
    var body: some View {
        Image(symbol)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .background(background.opacity(0.5)).cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbol: Binding.constant("apple"), background: Binding.constant(Color.green))
    }
}
