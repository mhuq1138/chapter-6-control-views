//
//  CustomToggleStyle.swift
//  Toggle Control Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct CustomToggleStyle: ToggleStyle {
    let width: CGFloat
    let leading:Bool
        
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            if leading{
                configuration.label
            }
            ZStack(alignment: configuration.isOn ? .trailing : .leading) {
                RoundedRectangle(cornerRadius: width/4)
                    .frame(width: 4*width/5, height: width/2 )
                    .foregroundColor(configuration.isOn ? .green : .gray)
                    
                Circle()
                    .frame(width: (width / 2) - 4, height: (width / 2) - 4)
                    .padding(2)
                    .foregroundColor(.white)
                    .onTapGesture {
                        withAnimation {
                            configuration.$isOn.wrappedValue.toggle()
                        }
                }
            }
            if !leading {
                configuration.label
            }
        }
    }
}
