//
//  UnrestrictedStepperView.swift
//  Stepper Control Examples
//
//  Created by Mazharul Huq on 11/22/20.
//

import SwiftUI

struct UnrestrictedStepperView: View {
    @State var integerValue = 10
    @State var doubleValue = 10.0
    
    var body: some View {
        VStack(spacing:20){
            Stepper(value: $integerValue, label: {Text("Intger value: \(integerValue)")})
            
            Stepper("Double Value \(doubleValue, specifier: "%.2f"):", value: $doubleValue, step: 2.5, onEditingChanged: {_ in
                print("Value changed")
            })
        }.padding(20)
    }
}

struct UnrestrictedStepperView_Previews: PreviewProvider {
    static var previews: some View {
        UnrestrictedStepperView()
            .previewLayout(.fixed(width: 450, height: 200))
    }
}
