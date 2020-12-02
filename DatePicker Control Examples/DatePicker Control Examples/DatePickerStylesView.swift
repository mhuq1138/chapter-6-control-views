//
//  DatePickerStylesView.swift
//  DatePicker Control Examples
//
//  Created by Mazharul Huq on 11/23/20.
//

import SwiftUI

struct DatePickerStylesView: View {
    @State private var dateSelected = Date()
    @State private var birthDate = Date()
    var dateFormatter:DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var body: some View {
        VStack(spacing:30) {
            Text("Date Selected: \(dateSelected)")
            DatePicker(selection: $dateSelected, displayedComponents: .date){
                    Text("Date:")
                        .font(.title2)
            }.datePickerStyle(WheelDatePickerStyle())
             
            Text("Birthday: \(birthDate, formatter: dateFormatter)")
                .font(.title2)
            DatePicker("Birthday:", selection: $birthDate,in: ...Date(), displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
        }.padding( 15)
    }
}

struct DatePickerStylesView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerStylesView()
    }
}
