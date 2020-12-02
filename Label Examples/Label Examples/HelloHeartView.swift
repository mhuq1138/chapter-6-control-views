//
//  HelloHeartView.swift
//  Label Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct HelloHeartView: View {
    var body: some View {
        Label(
            title: {
                    Text("Hello, World!")
                   },
            icon: { Image(systemName: "heart.fill")
                      .foregroundColor(.red)
                 }
             ).font(.largeTitle)
              .foregroundColor(.orange)
    }
}

struct HelloHeartView_Previews: PreviewProvider {
    static var previews: some View {
        HelloHeartView()
            .previewLayout(.fixed(width: 350, height: 120))
    }
}
