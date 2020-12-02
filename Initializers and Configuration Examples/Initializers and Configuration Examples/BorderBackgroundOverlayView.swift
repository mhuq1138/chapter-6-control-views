//
//  BorderBackgroundOverlayView.swift
//  Initializers and Configuration Examples
//
//  Created by Mazharul Huq on 11/20/20.
//

import SwiftUI

struct BorderBackgroundOverlayView: View {
    @State private var text = "Tap a button"
    var body: some View {
        VStack{
            Text(text)
                .padding(.bottom, 30 )
                .font(.largeTitle)
            HStack(spacing: 20){
                Button(action: {self.text = "Left button tapped"})
                   {
                      Text("Tap Me")
                        .padding(15)
                        .border(Color.orange, width: 3)
                   }
                Button(action: {self.text = "Middle button tapped"})
                {
                   Text("Tap Me")
                     .padding(15)
                     .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.green, lineWidth: 5))
                }
                Button(action: {self.text = "Right button tapped"})
                {
                    Text("Tap Me")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(15)
                        .background(RoundedRectangle(cornerRadius: 15).foregroundColor(.red))
                }
            }
        }
    }
}


struct BorderBackgroundOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        BorderBackgroundOverlayView()
            .previewLayout(.fixed(width: 450, height: 200))
    }
}
