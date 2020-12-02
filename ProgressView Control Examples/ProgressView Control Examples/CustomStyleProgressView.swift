//
//  CustomStyleProgressView.swift
//  ProgressView Control Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct CustomStyleProgressView: View {
    @State private var downloadAmount = 0.0
    @State private var isComplete = false
    @State private var completionString = "downloading..."
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing:35){
            ProgressView(value: downloadAmount, total: 100.0, label: {Text(completionString)
                .font(.title)
                .padding(.bottom, 30)
            }, currentValueLabel: {Text("Current value \(downloadAmount)")
                .font(.title)
                .padding(.top, 20)
            })
                .progressViewStyle(MyProgressViewStyle())
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


struct CustomStyleProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CustomStyleProgressView()
    }
}
