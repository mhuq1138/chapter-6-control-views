//
//  BuiltInStylesView.swift
//  Button Style Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct BuiltInStylesView: View {
    @State private var textString = "Tap a button"
    
    var body: some View {
        VStack(spacing: 10){
            Text(textString)
                .font(.title)
                .foregroundColor(.orange)
            Button("Default Button Style"){
                textString = "Default button tapped"
            }.buttonStyle(DefaultButtonStyle())
            Button("Plain Button Style"){
                textString = "Plain button tapped"
            }.buttonStyle(PlainButtonStyle())
            Button("Borderless Button Style"){
                textString = "Borderless button tapped"
            }.buttonStyle(BorderlessButtonStyle())
        }
    }
}

struct BuiltInStylesView_Previews: PreviewProvider {
    static var previews: some View {
        BuiltInStylesView()
            .previewLayout(.fixed(width: 400, height: 250))
    }
}
