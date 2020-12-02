//
//  NoBindingStepperView.swift
//  Stepper Control Examples
//
//  Created by Mazharul Huq on 11/22/20.
//

import SwiftUI

struct NoBindingStepperView: View {
    @State var width:CGFloat = 100.0
    
    var body: some View {
        VStack(spacing: 10){
            Color.blue
               .frame(width: width, height: 50)
            Text("Current width: \(width,  specifier: "%.2f")")
            Stepper(onIncrement: {
                if self.width < 300 {
                    self.width += 5.0
                }
            }, onDecrement: {
                if self.width > 0{
                    self.width -= 10.0
                }
            }){
                Text("Change width")
                    .font(.title)
            }.padding(10)
        }
    }
}

struct NoBindingStepperView_Previews: PreviewProvider {
    static var previews: some View {
        NoBindingStepperView()
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
