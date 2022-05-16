//
//  NotesView.swift
//  LearningSwiftCapstone
//
//  Created by Tracy Estes on 5/16/22.
//

import SwiftUI

struct NotesView: View {
    
    @Binding var notes: String
    
    var body: some View {
        VStack {
            Text("   Notes   ")
                .fontWeight(.bold)
                .font(.system(size: 35.0))
                .padding()
                .border(Color.blue, width: 4)
            Spacer()
            VStack(alignment: .leading) {
                Text("\(notes)")
            }
        }

    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView(notes: .constant("Note1"))
    }
}
