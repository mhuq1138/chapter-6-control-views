//
//  IndeterminateProgressView.swift
//  ProgressView Control Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct IndeterminateProgressView: View {
    @State private var isComplete = false
    
    var body: some View {
        VStack(spacing:30){
            if isComplete{
                ProgressView()
                ProgressView(label: {Text("downloading...")})
                ProgressView("downloading...")
            }
            Button("Start/Stop"){
                isComplete.toggle()
            }
        }
    }
}

struct IndeterminateProgressView_Previews: PreviewProvider {
    static var previews: some View {
        IndeterminateProgressView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
