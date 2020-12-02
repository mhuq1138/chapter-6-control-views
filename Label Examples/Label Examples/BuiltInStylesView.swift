//
//  BuiltInStylesView.swift
//  Label Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct BuiltInStylesView: View {
    var body: some View {
        VStack(spacing: 25){
            Label("Rain", systemImage: "cloud.rain")
            Label("Rain", systemImage: "cloud.rain")
                .labelStyle(IconOnlyLabelStyle())
            Label("Rain", systemImage: "cloud.rain")
                .labelStyle(TitleOnlyLabelStyle())
        }.font(.title)
    }
}

struct BuiltInStylesView_Previews: PreviewProvider {
    static var previews: some View {
        BuiltInStylesView()
            .previewLayout(.fixed(width: 400, height: 250))
    }
}
