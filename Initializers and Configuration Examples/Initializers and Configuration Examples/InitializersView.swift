//
//  InitializersView.swift
//  Initializers and Configuration Examples
//
//  Created by Mazharul Huq on 11/20/20.
//

import SwiftUI

struct InitializersView: View {
    @State private var colorFlag = true
    let title = "Change Using Property"
    
    var body: some View {
        VStack(spacing:10){
            Color(colorFlag ? .red: .blue)
                .frame(width: 300, height: 100)
            Button(action: changeColor, label: {
                Text("Change Color")
            }).font(.largeTitle)
            
            Button("Change Using Key"){
                colorFlag.toggle()
            }
            
            Button(title){
                colorFlag.toggle()
            }
        }.font(.title)
    }
    
    func changeColor(){
        colorFlag.toggle()
    }
}

struct InitializersView_Previews: PreviewProvider {
    static var previews: some View {
        InitializersView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
