//
//  InitializersView.swift
//  Slider Control Examples
//
//  Created by Mazharul Huq on 11/22/20.
//

import SwiftUI

struct InitializersView: View {
    @State private var isEditing = false
    @State private var speakerVolume = 0.0
    @State private var continuousValue = 0.5
    @State private var validValue = 0.0
    
    var body: some View {
        VStack(spacing:25){
            
            Text("Volume: \(speakerVolume)")
                .foregroundColor(isEditing ? .red: .blue)
            Slider(value: $speakerVolume,
                   in: 0...100,
                   onEditingChanged:{ editing in
                            isEditing = editing
                                                  },
                   minimumValueLabel: Image(systemName: "speaker.fill"),
                   maximumValueLabel: Image(systemName: "speaker.3.fill"),
                   label: {Text("Volume")}
            )
             
            Text("Value: \(continuousValue)")
            Slider(value: $continuousValue, label:{Text("Value")}
            )
            Text("Valid value: \(validValue)")
            Slider(value: $validValue,in: 0.0...50.0,step:2.5)
        }.padding(20)
    }
}

struct InitializersView_Previews: PreviewProvider {
    static var previews: some View {
        InitializersView()
            .previewLayout(.fixed(width: 400, height: 450))
    }
}
