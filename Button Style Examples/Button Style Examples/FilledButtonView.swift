//
//  FilledButtonView.swift
//  Button Style Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct FilledButtonView: View {
    @State private var text = "Tap a button"
    
    var body: some View {
        
        VStack(spacing:10) {
            Text(text)
                .font(.title)
                .padding(.bottom, 30)
            HStack(spacing:20){
                Button("Left"){
                   self.text = "Left button tapped"
                }
                Button("Right"){
                   self.text = "Right button tapped"
                }
            }.buttonStyle(FillStyle())
        }
    }
}

struct FilledButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilledButtonView()
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
