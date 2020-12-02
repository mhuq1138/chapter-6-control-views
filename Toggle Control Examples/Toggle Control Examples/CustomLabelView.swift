//
//  CustomLabelView.swift
//  Toggle Control Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct CustomLabelView: View {
    @State var switchOn = true
    
    var body: some View {
        VStack {
            Text(switchOn ? "Switch On": "Switch Off")
                .foregroundColor(switchOn ? .orange : .gray)
            Toggle("Dummy label", isOn: $switchOn)
                .labelsHidden()
        }.padding()
         .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 3)
                .foregroundColor(switchOn ? .blue : .gray)
        )
    }
}

struct CustomLabelView_Previews: PreviewProvider {
    static var previews: some View {
        CustomLabelView()
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
