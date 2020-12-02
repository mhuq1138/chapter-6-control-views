//
//  ContentView.swift
//  ColorPicker Example
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    @State private var color = Color.blue

    var body: some View {
        VStack(spacing: 15) {
            Rectangle()
                .foregroundColor(color)
                .frame(width: 300, height: 150)
            ColorPicker("Set rectangle color", selection: $color)
        }.padding(15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 350, height: 300))
    }
}
