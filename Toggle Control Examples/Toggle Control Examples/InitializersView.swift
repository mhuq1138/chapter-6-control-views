//
//  InitializersView.swift
//  Toggle Control Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct InitializersView: View {
    @State private var colorFlag = true
   
    var body: some View {
        VStack(spacing: 30){
            Color(colorFlag ? .orange:.green)
                .frame(width: 300, height: 150)
            Toggle(isOn: $colorFlag){
                HStack{
                    Spacer()
                    Image(systemName: "star.fill")
                        .foregroundColor(.blue)
                    Text("Change Color")
                }
            }
            Toggle("Change Color", isOn: $colorFlag)
        }.padding(15)
    }
}

struct InitializersView_Previews: PreviewProvider {
    static var previews: some View {
        InitializersView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
