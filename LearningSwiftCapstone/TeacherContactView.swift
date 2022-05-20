//
//  TeacherContactView.swift
//  LearningSwiftCapstone
//
//  Created by Tracy Estes on 5/11/22.
//

import SwiftUI

struct TeacherContactView: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
                VStack {
                    HStack {
                        Text("Name: ")
                        Spacer()
                    }
                    
                    HStack {
                        Text("Email: ")
                        Spacer()
                    }
                }
                Spacer()
                Text("Schedule")
                    .font(.title)
                VStack {
                    Spacer()
                    HStack {
                        VStack {
                            Text("Period")
                                .font(.title2)
                            Text("1st")
                            Text("2nd")
                            Text("3rd")
                            Text("4th")
                            Text("5th")
                            Text("6th")
                            Text("7th")
                        }
                        Spacer()
                        Divider()
                        Spacer()
                        VStack {
                            Text("Location")
                                .font(.title2)
                            Text("200")
                            Text("200")
                            Text("205")
                            Text("153")
                            Text("204")
                            Text("202")
                            Text("204")
                        }
                        Spacer()
                        Divider()
                        Spacer()
                        VStack {
                            Text("Subject")
                                .font(.title2)
                            Text("algebra")
                            Text("algebra")
                            Text("ecs")
                            Text("geo")
                            Text("plan")
                            Text("algebra")
                            Text("plan")
                        }
                        
                    }
                    
                }
                
            }
            .padding(25.0)
        }.navigationBarTitle("Teacher Contact")
    }
}

struct TeacherContactView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherContactView()
    }
}
