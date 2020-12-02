//
//  BorderedLabelStyle.swift
//  Label Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct BorderedLabelStyle: LabelStyle{
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .padding(15)
            .border(Color.orange, width: 3)
    }
}
