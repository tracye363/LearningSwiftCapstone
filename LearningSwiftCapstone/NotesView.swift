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
        
        ZStack {
            Rectangle()
                Color.mint
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                    List{
                        Text("\(notes)")
                        Text("")
                        Text("")
                    }
                    .navigationBarTitle("Notes")
                        Spacer()
                   
            }
        }
        }

    }


struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView(notes: .constant("Note1"))
    }
}
