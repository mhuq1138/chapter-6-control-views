//
//  CustomStyleView.swift
//  Label Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct CustomStyleView: View {
    var body: some View {
        Label("Rain", systemImage: "cloud.rain")
            .labelStyle(BorderedLabelStyle())
            .font(.largeTitle)
    }
}

struct CustomStyleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomStyleView()
            .previewLayout(.fixed(width: 300, height: 200))
    }
}
