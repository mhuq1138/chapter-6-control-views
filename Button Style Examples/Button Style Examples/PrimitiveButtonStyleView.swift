//
//  PrimitiveButtonStyleView.swift
//  Button Style Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct PrimitiveButtonStyleView: View {
    @State var text = "Tap the button"
    var body: some View {
        VStack(spacing: 20){
            Text(text)
                .font(.headline)
            Button("Tap Me"){
                self.text = "Primitive Style Button Tapped"
            }.buttonStyle(MyPrimitiveButtonStyle(color: .orange))
        }
    }
}

struct PrimitiveButtonStyleView_Previews: PreviewProvider {
    static var previews: some View {
        PrimitiveButtonStyleView()
            .previewLayout(.fixed(width: 350, height: 150))
    }
}
