//
//  DeterminateProgressView.swift
//  ProgressView Control Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct DeterminateProgressView: View {
    @State private var downloadAmount = 0.0
    @State private var isComplete = false
    @State private var completionString = "downloading..."
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing:35){
            ProgressView(value: downloadAmount, total: 100.0, label: {Text(completionString)}, currentValueLabel: {Text("Current value \(downloadAmount)")})
            ProgressView(value: downloadAmount, total: 100.0)
            ProgressView(value: downloadAmount, total: 100.0, label: {
                Text(completionString)
            })
            ProgressView(completionString, value: downloadAmount, total: 100.0)
            Button("Start"){
                downloadAmount = 0.0
                completionString = "downloading..."
            }
        }.padding()
        .onReceive(timer) { _ in
            if downloadAmount < 100 {
                downloadAmount += 2
                isComplete = true
            }
            else{
                isComplete = false
                completionString = "Download complete"
            }
        }
    }
}


struct DeterminateProgressView_Previews: PreviewProvider {
    static var previews: some View {
        DeterminateProgressView()
    }
}
