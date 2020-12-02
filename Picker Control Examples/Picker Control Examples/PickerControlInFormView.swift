//
//  PickerControlInFormView.swift
//  Picker Control Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct PickerControlInFormView: View {
    @State private var color = Color.red
    let colors:[Color] = [.red, .green, .blue,.orange, .yellow]
    
    var body: some View {
        NavigationView{
            Form{
                Rectangle()
                    .frame(width: 300, height: 100)
                    .foregroundColor(color)
                Picker(selection: $color, label: Text("Color Picker")){
                    ForEach(colors, id:\.self){color in
                        Text(color.description)
                    }
                }
            }.navigationTitle("Color Picker")
        }
    }
}

struct PickerControlInFormView_Previews: PreviewProvider {
    static var previews: some View {
        PickerControlInFormView()
            .previewLayout(.fixed(width: 400, height: 350))
    }
}
