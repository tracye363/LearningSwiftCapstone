//
//  ResourcesView.swift
//  LearningSwiftCapstone
//
//  Created by Tracy Estes on 5/11/22.
//

import SwiftUI

struct ResourcesView: View {
    //TestLine
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 0.635, green: 0.893, blue: 0.72))
                .ignoresSafeArea()
            List {
                Section {
                    NavigationLink(destination: Resource_VariablesConstantsTypes_View())
                    { Text ("Variables and Constants")
                        .font(.system(size: 25.0))}
                    
                    NavigationLink(destination: Resource_OperatorsAndBoolean_View())
                    { Text ("Operators & Boolean")
                        .font(.system(size: 25.0))}
                    
                    NavigationLink(destination: Resource_ControlFlow_View())
                    { Text ("Control Flow")
                        .font(.system(size: 25.0))}
                    
                    NavigationLink(destination: Resource_Loops_View())
                    { Text ("Loops")
                        .font(.system(size: 25.0))}
                    
                    NavigationLink(destination: Resource_Functions_View())
                    { Text ("Functions")
                        .font(.system(size: 25.0))}
                    
                    NavigationLink(destination: Resource_Arrays_View())
                    { Text ("Arrays")
                        .font(.system(size: 25.0))}
                } header: {
                    Text("Swift")
                }.listRowBackground(Rectangle().foregroundColor(Color(red: 0.98, green: 0.5, blue: 0.446))
                    .ignoresSafeArea())
                
                
                Section {
                    NavigationLink(destination: Resource_VariablesConstantsTypes_View())
                    { Text ("Layout Fundamentals")
                        .font(.system(size: 25.0))}
                    
                    NavigationLink(destination: Resource_OperatorsAndBoolean_View())
                    { Text ("Images")
                        .font(.system(size: 25.0))}
                    
                    NavigationLink(destination: Resource_ControlFlow_View())
                    { Text ("Buttons")
                        .font(.system(size: 25.0))}
                    
                    NavigationLink(destination: Resource_Loops_View())
                    { Text ("@State")
                        .font(.system(size: 25.0))}
                    
                    NavigationLink(destination: Resource_Functions_View())
                    { Text ("@Binding")
                        .font(.system(size: 25.0))}
                } header: {
                    Text("SwiftUI")
                }.listRowBackground(Rectangle().foregroundColor(Color(red: 0.98, green: 0.5, blue: 0.446))
                    .ignoresSafeArea())
            }.background((Color(red: 0.635, green: 0.893, blue: 0.72))
                .ignoresSafeArea())
                .onAppear {
                    // Set the default to clear
                    UITableView.appearance().backgroundColor = .clear
                }
        }.navigationBarTitle("Resources")
            
    }
}

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
