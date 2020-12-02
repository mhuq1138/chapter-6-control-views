//
//  InitializersView.swift
//  Picker Control Examples
//
//  Created by Mazharul Huq on 11/22/20.
//

import SwiftUI

struct InitializersView: View {
    @State private var color = Color.red
    
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(color)
                .frame(width: 300, height: 100)
            Picker(selection: $color, label: Text("Select a color"), content: {
                Text("Red").tag(Color.red)
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
                Text("Yellow").tag(Color.yellow)
            })
            Picker("Select a color", selection: $color){
                Text("Red").tag(Color.red)
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
                Text("Yellow").tag(Color.yellow)
            }
        }
    }
}

struct InitializersView_Previews: PreviewProvider {
    static var previews: some View {
        InitializersView()
    }
}
