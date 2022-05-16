//
//  CalendarView.swift
//  LearningSwiftCapstone
//
//  Created by Tracy Estes on 5/11/22.
//

import SwiftUI



struct CalendarView: View {
    @State var date = Date()
    @State var notes: String = "This is editable text..."
   
    var body: some View {
        VStack {
            Text("   Calendar   ")
                .fontWeight(.bold)
                .font(.system(size: 35.0))
                .padding()
                .border(Color.blue, width: 5)
            
            DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)
            VStack (alignment: .leading){
                HStack {
                    Text("Notes:")
                        .fontWeight(.bold)
                        .font(.system(size: 25.0))
                    Spacer()
                    NavigationLink(destination: NotesView(notes: $notes))
                    {Text("Save")
                            .fontWeight(.bold)
                            .font(.system(size: 25.0))}
                }
                TextEditor(text: $notes)
                    .border(Color.blue, width: 2)
            }
            Spacer()
        }.padding()
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
