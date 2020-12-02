//
//  ContentView.swift
//  DatePicker Control Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           InitializersView()
              .tabItem {
                   Image(systemName: "1.square.fill")
                   Text("Initializers")
              }
           DatePickerStylesView()
              .tabItem {
                   Image(systemName: "2.square.fill")
                   Text("Date Picker Styles")
              }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
