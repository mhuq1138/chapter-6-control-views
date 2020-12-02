//
//  ContentView.swift
//  Initializers and Configuration Examples
//
//  Created by Mazharul Huq on 11/20/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            InitializersView()
                .tabItem {
                      Image(systemName: "1.circle")
                      Text("Initializers")
                 }
            VStack(spacing:20){
                BorderBackgroundOverlayView()
                ImageInLabelView()
            }
                .tabItem {
                      Image(systemName: "2.circle")
                    Text("Configurations")
                 }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
