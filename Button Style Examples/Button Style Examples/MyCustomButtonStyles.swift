//
//  MyCustomButtonStyles.swift
//  Button Style Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct CustomBorder:ButtonStyle{
    let color:Color = .blue
    
    public func makeBody(configuration: ButtonStyle.Configuration) -> some View {
        configuration.label
            .foregroundColor(color)
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 2))
    }
}

struct FillStyle: ButtonStyle{
    public func makeBody(configuration: FillStyle.Configuration) -> some View {
        configuration.label
            
            .foregroundColor(configuration.isPressed ? .blue: .white)
            .frame(width: 120, height: 40)
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.orange))
            .scaleEffect(configuration.isPressed ? 1.2:1.0)
    }
}

struct RectangleStyle: ButtonStyle{
    public func makeBody(configuration: ButtonStyle.Configuration) -> some View {
        RoundedRectangle(cornerRadius: 15, style: .circular)
            .fill(Color.pink)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 2)
                    .foregroundColor(configuration.isPressed ? .blue: .white)
                .padding(5)
        )
        .overlay(
            configuration.label
                .foregroundColor(.white)
                .font(.largeTitle)
                .scaleEffect(configuration.isPressed ? 1.2:1.0)
        ).frame(width: 250, height: 80)
    }
}

struct MyPrimitiveButtonStyle: PrimitiveButtonStyle{
    
    var color: Color

    func makeBody(configuration: PrimitiveButtonStyle.Configuration) -> some View {
        MyButton(configuration: configuration, color: color)
    }
        
    struct MyButton: View {
        @GestureState private var pressed = false

        let configuration: PrimitiveButtonStyle.Configuration
        let color: Color

        var body: some View {
            let longPress = LongPressGesture(minimumDuration: 1.0, maximumDistance: 0.0)
                    .updating($pressed) { value, state, _ in state = value }
                    .onEnded { _ in
                       self.configuration.trigger()
                }

            return configuration.label
                .foregroundColor(pressed ? .red:.white)
                .padding(15)
                .background(RoundedRectangle(cornerRadius: 5).fill(color))
                .shadow(color: .black, radius: 3)
                .scaleEffect(pressed ? 1.2 : 1.0)
                .gesture(longPress)
        }
    }
}



