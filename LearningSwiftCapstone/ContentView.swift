//
//  ContentView.swift
//  LearningSwiftCapstone
//
//  Created by Tracy Estes on 5/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                VStack (alignment: .center){
                        Text("  Learning Swift  ")
                            .fontWeight(.bold)
                            .font(.system(size: 40.0))
                            .padding()
                            .border(Color.blue, width: 4)
                            .padding()
                    Image ("swiftImage")
                        .resizable()
                        .scaledToFit()
                    .padding()
                    .padding()
                    NavigationLink(destination: TeacherContactView())
                    { Text ("Teacher Contact")
                            .font(.system(size: 35.0))
                            .underline()}
                    
                    NavigationLink(destination: CalendarView())
                    { Text ("Calendar")
                            .font(.system(size: 35.0))
                            .underline()}
            
                    NavigationLink(destination: GradeCalculatorView(abPoints: 0, apPoints: 0, aaPoints: 0, newPoints: 0.0, currentGrade: 0.0, newGrade: 0.0))
                    { Text ("Grade Calculator")
                            .font(.system(size: 35.0))
                            .underline()}
                        
                    NavigationLink(destination: ResourcesView())
                    { Text ("Resources")
                        .font(.system(size: 35.0))
                        .underline()}
                    Spacer()
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


    
