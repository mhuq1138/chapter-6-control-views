//
//  InitializersView.swift
//  DatePicker Control Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct InitializersView: View {
    @State private var dateSelected = Date()
    @State private var appointmentDate = Date()
    @State private var birthDay = Date()
    var dateFormatter:DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var body: some View {
        VStack(spacing:20){
            
            Text("\(dateSelected)")
            DatePicker(selection: $dateSelected, displayedComponents: [.date, .hourAndMinute], label: {
                Text("Select date:")
                    .font(.title)
            }).padding(10)
              .border(Color.gray)
            Form{
                Text("Appointment:\(appointmentDate)")
                DatePicker("Appt", selection: $appointmentDate,in:Date()...)
                    .padding(.bottom, 30)
                Text("Birthday:\(birthDay, formatter: dateFormatter)")
                DatePicker("Birthday", selection: $birthDay, in: ...Date(), displayedComponents: .date)
            }.padding()
        }.padding()
    }
}


struct InitializersView_Previews: PreviewProvider {
    static var previews: some View {
        InitializersView()
    }
}
