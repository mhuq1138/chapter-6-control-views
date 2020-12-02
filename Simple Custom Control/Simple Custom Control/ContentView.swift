//
//  ContentView.swift
//  Simple Custom Control
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    @State var currentProgress: CGFloat = 0.0
    
    var body: some View {
        VStack(spacing:25){
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.gray)
                    .frame(width: 300, height: 20)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: currentProgress, height: 20)
            }
            Button(action: {self.currentProgress += 20}) {
                Text("Tap Me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
