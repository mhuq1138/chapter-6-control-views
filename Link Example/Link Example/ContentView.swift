//
//  ContentView.swift
//  Link Example
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:30){
            Link(destination: URL(string: "https://www.apple.com")!,
                 label: {
                Text("Apple Web Site")
                    .font(.largeTitle)
            })
            Link("BBC News", destination: URL(string: "http://www.bbc.com")!)
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
