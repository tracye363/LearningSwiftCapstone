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
                .foregroundColor(Color(red: 0.635, green: 0.893, blue: 0.72))
                .ignoresSafeArea()
            .background((Color(red: 0.635, green: 0.893, blue: 0.72))
                .ignoresSafeArea())
                .onAppear {
                    // Set the default to clear
                    UITableView.appearance().backgroundColor = .clear
                }
            
            VStack(alignment: .leading) {
                    List{
                        Text("\(notes)")
                            .listRowBackground(Rectangle().foregroundColor(Color(red: 0.98, green: 0.5, blue: 0.446))
                                .ignoresSafeArea())
                        Text("")
                            .listRowBackground(Rectangle().foregroundColor(Color(red: 0.98, green: 0.5, blue: 0.446))
                                .ignoresSafeArea())
                        Text("")
                            .listRowBackground(Rectangle().foregroundColor(Color(red: 0.98, green: 0.5, blue: 0.446))
                                .ignoresSafeArea())
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
