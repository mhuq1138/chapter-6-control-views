//
//  ContentView.swift
//  Toggle Control Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:20){
            InitializersView()
            Divider()
            CustomLabelView()
            Divider()
            CustomTogglesView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
