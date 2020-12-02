//
//  ContentView.swift
//  Slider Control Examples
//
//  Created by Mazharul Huq on 11/22/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:15){
            InitializersView()
            Divider()
            Text("Color Selector")
                .font(.largeTitle)
            ColorSelectorView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
