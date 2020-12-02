//
//  CustomTogglesView.swift
//  Toggle Control Examples
//
//  Created by Mazharul Huq on 11/21/20.
//

import SwiftUI

struct CustomTogglesView: View {
    @State var toggle = false
    @State var opacity = true
       
    var body: some View {
        VStack{
            Color(toggle ? .blue: .purple)
                .opacity(opacity ? 1.0: 0.3)
                .frame(width: 300, height: 100)
            Toggle("Change Color", isOn: $toggle)
                .toggleStyle(CustomToggleStyle(width: 50,leading: true))
            .padding(20)
            
            Toggle(isOn: $opacity){
                Image(systemName: "sun.max.fill")
                    .font(.largeTitle)
            }.toggleStyle(CustomToggleStyle(width: 70,leading: false))
        }
    }
}

struct CustomTogglesView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTogglesView()
            .previewLayout(.fixed(width: 350, height: 300))
    }
}
