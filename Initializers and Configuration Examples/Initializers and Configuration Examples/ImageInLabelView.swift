//
//  ImageInLabelView.swift
//  Initializers and Configuration Examples
//
//  Created by Mazharul Huq on 11/20/20.
//

import SwiftUI

struct ImageInLabelView: View {
    @State var counter = 0
          
    var body: some View {
        VStack(spacing:20){
            Text("\(self.counter)")
                .font(.largeTitle)
                .padding()
                .border(Color.gray)
              
            HStack{
                Button(action: {self.counter = 0})
                {
                    Image(systemName: "trash")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }.padding(.trailing, 20)
                   
                Button(action:{self.counter += 1})
                    {
                      HStack{
                          Image(systemName: "star.fill")
                              .font(.system(size: 50))
                              .foregroundColor(.orange)
                              .padding()
                          Text("Tap Me")
                              .foregroundColor(.white)
                              .padding(5)
                       }.padding(5)
                        .frame(width: 250, height: 100)
                        .background(Color.blue)
                        .cornerRadius(10)
                  }
              }
        }
    }
}


struct ImageInLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ImageInLabelView()
            .previewLayout(.fixed(width: 400, height: 250))
    }
}
