//
//  ContentView.swift
//  Label Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:20){
            HelloHeartView()
            Divider()
            CustomTitleIconView()
            Divider()
            BuiltInStylesView()
            Divider()
            CustomStyleView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
