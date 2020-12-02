//
//  ColorSelectorView.swift
//  Slider Control Examples
//
//  Created by Mazharul Huq on 11/22/20.
//

import SwiftUI

struct ColorSelectorView: View {
    @State var red = 0.0
    @State var green = 0.5
    @State var blue = 0.0
        
    var body: some View {
            
        VStack{
            Color(red: red, green: green, blue: blue)
                .frame(width:250,height:100)
                .border( Color.gray, width: 2)
            HStack{
                Text("RGB Color: ")
                Text("R: " + String(format: "%0.0f",255*red))
                Text("G: " + String(format: "%0.0f",255*green))
                Text("B: " + String(format: "%0.0f",255*blue))
            }.padding(20)
                    
            createSlider(name: "Red", value: $red)
            createSlider(name: "Green", value: $green)
            createSlider(name: "Blue", value: $blue)
        }
    }
        
    func createSlider(name:String,value:Binding<Double>)-> some View{
         
        HStack{
            Text(name)
            Slider(value: value, in: 0.0...1.0, step: 0.01)
        }.padding(10)
    }
}

struct ColorSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSelectorView()
            .previewLayout(.fixed(width: 350, height: 450))
    }
}
