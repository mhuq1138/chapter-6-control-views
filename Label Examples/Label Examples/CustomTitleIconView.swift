//
//  CustomTitleIconView.swift
//  Label Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct CustomTitleIconView: View {
    var body: some View {
        Label(
            title: {
                VStack{
                    Text("Hello, World!")
                    Text("from SwiftUI")
                }.font(.title)
                 .offset(x: 10, y: -80)
            },
            icon: {
                Circle()
                   .fill(Color.green)
                   .frame(width: 150, height: 150)
                   .overlay(Image("swiftui-96x96"))
             })
    }
}

struct CustomTitleIconView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTitleIconView()
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
