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
        VStack {
            Text("Resources")
                .fontWeight(.bold)
                .font(.system(size: 40.0))
                .border(Color.blue, width: 4)
            Spacer()
            
            NavigationLink(destination: Resource_VariablesConstantsTypes_View())
            { Text ("Variables, Constants, Types")
                    .font(.system(size: 35.0))
                .underline()}
            
            NavigationLink(destination: Resource_OperatorsAndBoolean_View())
            { Text ("Operators & Boolean")
                    .font(.system(size: 35.0))
                .underline()}
            
            NavigationLink(destination: Resource_ControlFlow_View())
            { Text ("Control Flow")
                    .font(.system(size: 35.0))
                .underline()}
            
            NavigationLink(destination: Resource_Loops_View())
            { Text ("Loops")
                    .font(.system(size: 35.0))
                .underline()}
            //Test
            NavigationLink(destination: Resource_VariablesConstantsTypes_View())
            { Text ("Functions")
                    .font(.system(size: 35.0))
                .underline()}
            
            NavigationLink(destination: Resource_VariablesConstantsTypes_View())
            { Text ("Arrays")
                    .font(.system(size: 35.0))
                .underline()}
            
            NavigationLink(destination: Resource_VariablesConstantsTypes_View())
            { Text ("Optionals")
                    .font(.system(size: 35.0))
                .underline()}
            
            Spacer()
        }
    }
}

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
