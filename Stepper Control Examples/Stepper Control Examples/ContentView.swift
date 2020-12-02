//
//  ContentView.swift
//  Stepper Control Examples
//
//  Created by Mazharul Huq on 11/22/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:30){
            UnrestrictedStepperView()
            Divider()
            ClosedRangeStepperView()
            Divider()
            NoBindingStepperView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
