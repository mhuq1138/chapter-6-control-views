//
//  ClosedRangeStepperView.swift
//  Stepper Control Examples
//
//  Created by Mazharul Huq on 11/22/20.
//

import SwiftUI

struct ClosedRangeStepperView: View {
    @State var age = 21
    @State var speed = 30.0
    
    var body: some View {
        VStack(spacing:30){
            Stepper(value: $age, in: 0...120){
                Text("Age: \(age)")
            }
            
            Stepper(value: $speed, in: 0...150.0, step: 5.0){
                HStack(spacing:5) {
                    Image(systemName: "car")
                    Text("Speed: \(speed, specifier: "%.2f")")
                }.font(.title)
            }
        }.padding(20)
    }
}

struct ClosedRangeStepperView_Previews: PreviewProvider {
    static var previews: some View {
        ClosedRangeStepperView()
            .previewLayout(.fixed(width: 400, height: 150))
    }
}
