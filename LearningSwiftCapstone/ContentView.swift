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
            ZStack {
                Rectangle()
                Color.mint
                    .ignoresSafeArea()
                
                VStack (alignment: .center){
                            
                        Image ("swiftImage")
                            .resizable()
                            .scaledToFit()
                        .padding()
                        .padding()
                        
                        
                        NavigationLink(destination: TeacherContactView())
                        { Text ("Teacher Contact")
                                .font(.system(size: 35.0))
                                .underline()
                                
                        }
                        
                        NavigationLink(destination: CalendarView())
                        { Text ("Calendar")
                                .font(.system(size: 35.0))
                                .underline()
                        }
                
                        NavigationLink(destination: GradeViewNew(abPoints: 0.0, abTotalPoints: 0.0, apPoints: 0.0, apTotalPoints: 0.0, aaPoints: 0.0, aaTotalPoints: 0.0, newPoints: 0.0, newTotalPoints: 0.0, currentGrade: 0.0, newGrade: 0.0))
                        { Text ("Grade Calculator")
                               .font(.system(size: 35.0))
                                .underline()
                        }
                            
                        NavigationLink(destination: ResourcesView())
                        { Text ("Resources")
                            .font(.system(size: 35.0))
                            .underline()
                            
                        }
                        Spacer()
                    }
                .navigationTitle("Learning Swift")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


    
