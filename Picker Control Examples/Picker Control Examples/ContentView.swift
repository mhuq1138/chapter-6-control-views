//
//  ContentView.swift
//  Picker Control Examples
//
//  Created by Mazharul Huq on 11/22/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            InitializersView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Initializers")
                }
            
            PickerAndForEachView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Picker with ForEach")
                }
            
            PickerControlInFormView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Picker in Form")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
