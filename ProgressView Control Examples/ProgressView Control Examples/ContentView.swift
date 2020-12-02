//
//  ContentView.swift
//  ProgressView Control Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:10){
            IndeterminateProgressView()
            DeterminateProgressView()
            CustomStyleProgressView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
