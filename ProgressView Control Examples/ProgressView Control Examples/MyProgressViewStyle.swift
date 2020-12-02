//
//  MyProgressViewStyle.swift
//  ProgressView Control Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct MyProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 1.0, green: 0, blue: 0.0),
                    radius: 4.0, x: 2.0, y: 3.0)
    }
}

