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
                        Text("Name: Kevin McQuown")
                        Spacer()
                    }
                    
                    HStack {
                        Text("Email: Use Slack")
                        Spacer()
                    }
                }
                Text("Schedule")
                    .font(.title)
                VStack {
                    HStack {
                        VStack {
                            Text("Period")
                                .font(.title2)
                                .padding(.bottom, 5.0)
                            Text("1st")
                                .padding(.bottom, 5.0)
                            Text("2nd")
                                .padding(.bottom, 5.0)
                            Text("3rd")
                                .padding(.bottom, 5.0)
                            Text("4th")
                                .padding(.bottom, 5.0)
                            Text("5th")
                                .padding(.bottom, 5.0)
                            Text("6th")
                                .padding(.bottom, 5.0)
                            Text("7th")
                        }
                        .padding(15.0)
                        VStack {
                            Text("Location")
                                .font(.title2)
                                .padding(.bottom, 5.0)
                            Text("200")
                                .padding(.bottom, 5.0)
                            Text("200")
                                .padding(.bottom, 5.0)
                            Text("205")
                                .padding(.bottom, 5.0)
                            Text("153")
                                .padding(.bottom, 5.0)
                            Text("204")
                                .padding(.bottom, 5.0)
                            Text("202")
                                .padding(.bottom, 5.0)
                            Text("204")
                        }
                        .padding(15.0)
                        VStack {
                            Text("Subject")
                                .font(.title2)
                                .padding(.bottom, 5.0)
                            Text("algebra")
                                .padding(.bottom, 5.0)
                            Text("algebra")
                                .padding(.bottom, 5.0)
                            Text("ecs")
                                .padding(.bottom, 5.0)
                            Text("geo")
                                .padding(.bottom, 5.0)
                            Text("plan")
                                .padding(.bottom, 5.0)
                            Text("algebra")
                                .padding(.bottom, 5.0)
                            Text("plan")
                        }
                        .padding(15.0)
                        
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
