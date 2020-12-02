//
//  RoundedRectangleButtonView.swift
//  Button Style Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct RoundedRectangleButtonView: View {
    @State private var switchFlag = false
    
    var body: some View {
        VStack(spacing:15) {
            Image(systemName: switchFlag ? "lightbulb.fill":"lightbulb")
                .font(.largeTitle)
                .foregroundColor(.yellow)
            Button(action: {switchFlag.toggle()}, label: {
                HStack{
                    Image(systemName: "power")
                    Text("Turn On/Off")
                }.font(.title)
            }).buttonStyle(RectangleStyle())
        }
    }
}

struct RoundedRectangleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleButtonView()
            .previewLayout(.fixed(width: 350, height: 200))
    }
}
