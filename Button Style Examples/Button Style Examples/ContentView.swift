//
//  ContentView.swift
//  Button Style Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:20){
            BuiltInStylesView()
            Divider()
            BorderedButtonView()
            FilledButtonView()
            RoundedRectangleButtonView()
            Divider()
            PrimitiveButtonStyleView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
